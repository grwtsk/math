# mul_le_ker_of_range_le_mul_of_sq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:591970ed-482a-603d-6ef2-a45abc5d577d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38161a5a-74a8-f962-db77-20c199d0f124",
  "kind": "lemma",
  "lexical_name": "mul_le_ker_of_range_le_mul_of_sq_zero",
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
  "slug": "mul-le-ker-of-range-le-mul-of-sq-zero--3830c127d4eae8e727a3c9c0",
  "source": {
    "blob": "1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3830c127d4eae8e727a3c9c05d4879686039ce8e850a875d0e955a7b44676b63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38161a5a-74a8-f962-db77-20c199d0f124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mul_le_ker_of_range_le_mul_of_sq_zero {J I : Ideal R} (sq : I ^ 2 = ⊥)
    (f : J.Cotangent →ₗ[R] J.Cotangent)
    (le : f.range ≤ (Submodule.comap J.subtype (I * J)).map J.toCotangent) :
    (Submodule.comap J.subtype (I * J)).map J.toCotangent ≤ f.ker := by
  rw [pow_two] at sq
  have {x : R} (h : x ∈ I * J) : f (J.toCotangent ⟨x, Ideal.mul_le_right h⟩) = 0 := by
    induction h using Submodule.mul_induction_on' with
    | mem_mul_mem y hy z hz =>
      rcases Submodule.mem_map.mp (le (f.mem_range_self (J.toCotangent ⟨z, hz⟩))) with ⟨w, hw, eqz⟩
      have mem_bot := Ideal.mul_mem_mul hy (Submodule.mem_comap.mp hw)
      simp only [← mul_assoc, sq, Submodule.bot_mul, Submodule.mem_bot] at mem_bot
      have eq0 : y • w = 0 := SetCoe.ext mem_bot
      have : ⟨y * z, Ideal.mul_le_right (Submodule.mul_mem_mul hy hz)⟩ = y • (⟨z, hz⟩ : J) := rfl
      rw [this, map_smul, map_smul, ← eqz, ← map_smul, eq0, map_zero]
    | add y ymem z zmem hy hz =>
      have : (⟨y + z, Ideal.mul_le_right (add_mem ymem zmem)⟩ : J) =
        ⟨y, Ideal.mul_le_right ymem⟩ + ⟨z, Ideal.mul_le_right zmem⟩ := rfl
      rw [this, map_add, map_add, hy, hz, add_zero]
  intro x hx
  rcases Submodule.mem_map.mp hx with ⟨x', hx', eq⟩
  simpa [← eq] using this hx'

set_option backward.isDefEq.respectTransparency.types false in
/-- For flat ring homomorphism `f : R →+* S`, `I` an ideal of `R` which is square zero,
if `R ⧸ I →+* S ⧸ IS` is formally smooth, so is `f`. -/
@[stacks 031L]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
