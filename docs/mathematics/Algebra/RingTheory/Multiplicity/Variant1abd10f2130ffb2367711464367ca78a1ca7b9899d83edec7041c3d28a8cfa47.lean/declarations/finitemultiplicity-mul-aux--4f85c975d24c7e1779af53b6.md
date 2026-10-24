# finiteMultiplicity_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 720,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b0129e0-e68c-7659-7293-a13ae1fe19ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bad27073-1700-6fae-fa35-c6f02b837ab1",
  "kind": "theorem",
  "lexical_name": "finiteMultiplicity_mul_aux",
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
  "slug": "finitemultiplicity-mul-aux--4f85c975d24c7e1779af53b6",
  "source": {
    "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 720,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f85c975d24c7e1779af53b697302ddef1c627cf4a5c809b4e41309ac0655854",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad27073-1700-6fae-fa35-c6f02b837ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMultiplicity_mul_aux {p : α} (hp : Prime p) {a b : α} :
    ∀ {n m : ℕ}, ¬p ^ (n + 1) ∣ a → ¬p ^ (m + 1) ∣ b → ¬p ^ (n + m + 1) ∣ a * b
  | n, m => fun ha hb ⟨s, hs⟩ =>
    have : p ∣ a * b := ⟨p ^ (n + m) * s, by simp [hs, pow_add, mul_comm, mul_assoc, mul_left_comm]⟩
    (hp.2.2 a b this).elim
      (fun ⟨x, hx⟩ =>
        have hn0 : 0 < n :=
          Nat.pos_of_ne_zero fun hn0 => by simp [hx, hn0] at ha
        have hpx : ¬p ^ (n - 1 + 1) ∣ x := fun ⟨y, hy⟩ =>
          ha (hx.symm ▸ ⟨y, mul_right_cancel₀ hp.1 <| by
            rw [tsub_add_cancel_of_le (succ_le_of_lt hn0)] at hy
            simp [hy, pow_add, mul_comm, mul_assoc, mul_left_comm]⟩)
        have : 1 ≤ n + m := le_trans hn0 (Nat.le_add_right n m)
        finiteMultiplicity_mul_aux hp hpx hb
          ⟨s, mul_right_cancel₀ hp.1 (by
                rw [tsub_add_eq_add_tsub (succ_le_of_lt hn0), tsub_add_cancel_of_le this]
                simp_all [mul_comm, mul_assoc, mul_left_comm, pow_add])⟩)
      fun ⟨x, hx⟩ =>
        have hm0 : 0 < m :=
          Nat.pos_of_ne_zero fun hm0 => by simp [hx, hm0] at hb
        have hpx : ¬p ^ (m - 1 + 1) ∣ x := fun ⟨y, hy⟩ =>
          hb
            (hx.symm ▸
              ⟨y,
                mul_right_cancel₀ hp.1 <| by
                  rw [tsub_add_cancel_of_le (succ_le_of_lt hm0)] at hy
                  simp [hy, pow_add, mul_comm, mul_assoc, mul_left_comm]⟩)
        finiteMultiplicity_mul_aux hp ha hpx
        ⟨s, mul_right_cancel₀ hp.1 (by
              rw [add_assoc, tsub_add_cancel_of_le (succ_le_of_lt hm0)]
              simp_all [mul_comm, mul_assoc, mul_left_comm, pow_add])⟩

@[deprecated (since := "2024-11-30")]
alias multiplicity.finite_mul_aux := finiteMultiplicity_mul_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73fa16aff3baa9231783726137ed347059e39f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
