# parse_value_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae096b0fb3e0262c8f6d3988c505a2b58431dc26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-inverse/ValueInverse-v2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12aed11d-d654-4384-670c-ea672f773dc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4d1678a-042d-5bdb-7935-e10c14dba515",
  "kind": "theorem",
  "lexical_name": "parse_value_suffix",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "parse-value-suffix--86550e95ef276f9f32683a70",
  "source": {
    "blob": "ae096b0fb3e0262c8f6d3988c505a2b58431dc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86550e95ef276f9f32683a709b32d6f356d6cd10a6b85248d8ade733f96a5013",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d1678a-042d-5bdb-7935-e10c14dba515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parse_value_suffix (fuel : Nat) : ∀ (v : Value) (depth : Nat) (s : Bytes),
    valueOK depth v = true → depth + fuel = 33 →
    parseValue fuel (emit v ++ s) = some (v,s) := by
  induction fuel with
  | zero =>
    intro v depth s h hf
    have := valueOK_depth_le depth v h
    omega
  | succ fuel ih =>
    intro v depth s h hf
    cases v with
    | bool b => cases b <;> simp [emit, parseValue]
    | int n => exact parse_int_suffix fuel n s
    | rational n d => exact parse_rational_suffix fuel n d s
    | text p =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      exact parse_text_suffix fuel p s h.1.2
    | array vs =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      apply parse_array_suffix fuel vs s h.1.2
      intro v hv t
      have hc := List.all_eq_true.mp h.2 ⟨v,hv⟩ (by simp)
      exact ih v (depth+1) t hc (by omega)
    | map ps =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      have hp (kv : Bytes × Value) (hkv : kv ∈ ps) :
          ((depth+1 ≤ 32 ∧ kv.1.length ≤ 16384) ∧ utf8 kv.1 = true) ∧
            valueOK (depth+1) kv.2 = true := by
        have hc := List.all_eq_true.mp h.2 ⟨kv,hkv⟩ (by simp)
        simpa only [Bool.and_eq_true, decide_eq_true_eq] using hc
      cases fuel with
      | zero =>
        have he : ps = [] := by
          apply List.eq_nil_iff_forall_not_mem.mpr
          intro kv hkv
          have hb := (hp kv hkv).1.1.1
          omega
        subst ps
        exact parse_empty_map_suffix 0 s
      | succ fuel =>
        apply parse_map_suffix fuel ps s h.1.1.2
        · intro kv hkv; exact (hp kv hkv).1.1.2
        · intro kv hkv t
          exact ih kv.2 (depth+1) t (hp kv hkv).2 (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae096b0fb3e0262c8f6d3988c505a2b58431dc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
