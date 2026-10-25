# mul_not_definable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da414992aa3fb9d85586b9d8f25f58d20e01b36e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8704cfc-7992-466a-6407-96f51d23ad2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fe7a380-08fb-88ac-233d-e67fbe36f146",
  "kind": "theorem",
  "lexical_name": "mul_not_definable",
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
  "slug": "mul-not-definable--6df29387975d5a2f00b87de7",
  "source": {
    "blob": "da414992aa3fb9d85586b9d8f25f58d20e01b36e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df29387975d5a2f00b87de7b76c7183ff570a307dd00b9fbeb26e7e8feee36a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fe7a380-08fb-88ac-233d-e67fbe36f146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_not_definable : ¬ A.Definable presburger {v : Fin 3 → ℕ | v 0 = v 1 * v 2} := by
  intro hmul
  have hsqr : A.Definable₁ presburger {x * x | x : ℕ} := by
    rw [Definable₁]
    convert! (hmul.preimage_comp (β := Fin 2) ![0, 1, 1]).image_comp ![0]
    ext
    simpa [funext_iff, Fin.exists_fin_succ_pi] using exists_congr fun _ => Eq.comm
  rw [definable₁_iff_ultimately_periodic] at hsqr
  rcases hsqr with ⟨k, p, hp, h⟩
  specialize h ((max k p) * (max k p)) ((Nat.le_mul_self _).trans' (le_max_left _ _))
  simp only [mem_ofPred_eq, exists_apply_eq_apply, true_iff] at h
  rcases h with ⟨x, h₁⟩
  by_cases h₂ : x ≤ max k p
  · apply Nat.mul_self_le_mul_self at h₂
    grind
  · simp only [not_le, Nat.lt_iff_add_one_le] at h₂
    apply Nat.mul_self_le_mul_self at h₂
    grind

end FirstOrder.Language.presburger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da414992aa3fb9d85586b9d8f25f58d20e01b36e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
