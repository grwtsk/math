# gcd_props

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0f1e2854f539f1ddc080ef431aa4c8bb8e73fe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ded38b7a-b149-93a9-ba5a-ea1f5ebcfdd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae0acd03-12df-e121-e1e0-733e64a3696e",
  "kind": "theorem",
  "lexical_name": "gcd_props",
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
  "slug": "gcd-props--e309531ad68e80e8c4b92a6f",
  "source": {
    "blob": "c0f1e2854f539f1ddc080ef431aa4c8bb8e73fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e309531ad68e80e8c4b92a6fbf8609b95c54fcfc3696619fa80630e4a9a3b32d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae0acd03-12df-e121-e1e0-733e64a3696e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_props :
    let d := gcdD a b
    let w := gcdW a b
    let x := gcdX a b
    let y := gcdY a b
    let z := gcdZ a b
    let a' := gcdA' a b
    let b' := gcdB' a b
    w * z = succPNat (x * y) ∧
      a = a' * d ∧
        b = b' * d ∧
          z * a' = succPNat (x * b') ∧
            w * b' = succPNat (y * a') ∧ (z * a : ℕ) = x * b + d ∧ (w * b : ℕ) = y * a + d := by
  intros d w x y z a' b'
  let u := XgcdType.start a b
  let ur := u.reduce

  have _ : d = ur.a := rfl
  have hb : d = ur.b := u.reduce_isReduced'
  have ha' : (a' : ℕ) = w + x := gcdA'_coe a b
  have hb' : (b' : ℕ) = y + z := gcdB'_coe a b
  have hdet : w * z = succPNat (x * y) := u.reduce_isSpecial' rfl
  constructor
  · exact hdet
  have hdet' : (w * z : ℕ) = x * y + 1 := by rw [← mul_coe, hdet, succPNat_coe]
  have _ : u.v = ⟨a, b⟩ := XgcdType.start_v a b
  let hv : Prod.mk (w * d + x * ur.b : ℕ) (y * d + z * ur.b : ℕ) = ⟨a, b⟩ :=
    u.reduce_v.trans (XgcdType.start_v a b)
  rw [← hb, ← add_mul, ← add_mul, ← ha', ← hb'] at hv
  have ha'' : (a : ℕ) = a' * d := (congr_arg Prod.fst hv).symm
  have hb'' : (b : ℕ) = b' * d := (congr_arg Prod.snd hv).symm
  constructor
  · exact eq ha''
  constructor
  · exact eq hb''
  have hza' : (z * a' : ℕ) = x * b' + 1 := by
    rw [ha', hb', mul_add, mul_add, mul_comm (z : ℕ), hdet']
    ring
  have hwb' : (w * b' : ℕ) = y * a' + 1 := by
    rw [ha', hb', mul_add, mul_add, hdet']
    ring
  constructor
  · apply eq
    rw [succPNat_coe, Nat.succ_eq_add_one, mul_coe, hza']
  constructor
  · apply eq
    rw [succPNat_coe, Nat.succ_eq_add_one, mul_coe, hwb']
  rw [ha'', hb'']
  repeat rw [← @mul_assoc]
  rw [hza', hwb']
  constructor <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0f1e2854f539f1ddc080ef431aa4c8bb8e73fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
