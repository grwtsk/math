# pow_smul_top_eq_ker_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f83407d7-d0b5-5ce4-fec9-471db6b90b09",
  "kind": "theorem",
  "lexical_name": "pow_smul_top_eq_ker_eval",
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
  "slug": "pow-smul-top-eq-ker-eval--8ebced04413c0ea13a5b1c58",
  "source": {
    "blob": "04a63bf8866ef608f3fe04f0d99d5fa92c7044a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 162,
    "path": "GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ebced04413c0ea13a5b1c5825c94ab93a6228676fcc1af961b4f5a0802f7260",
  "verification": {
    "reference": "docs/verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f83407d7-d0b5-5ce4-fec9-471db6b90b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_smul_top_eq_ker_eval {n : ℕ} (h : I.FG) : I ^ n • ⊤ = (eval I M n).ker := by
  classical
  refine le_antisymm (pow_smul_top_le_ker_eval ..) ?_
  replace h := Ideal.FG.pow (n := n) h
  rcases h with ⟨s, hs⟩
  simp only [← hs, span_smul_eq]
  rw [← restrictScalars_top R (AdicCompletion I R) (AdicCompletion I M),
    ← restrictScalars_image_smul_eq (R := AdicCompletion I R),
    ← restrictScalars_range_ofPowSMul_eq_ker_eval, restrictScalars_le,
    image_smul_top_eq_range_lsum]
  simp only [SetLike.coe_sort_coe]
  rw [← LinearMap.range_comp_of_range_eq_top (f := (finsuppLEquivDirectSum ..).symm.toLinearMap)
    _ (by simp), lsum_smul_comp_finsuppLEquivDirectSum_symm,
    LinearMap.range_comp_of_range_eq_top _ (LinearEquiv.range _),
    LinearMap.range_comp_of_range_eq_top _ (LinearMap.range_eq_top_of_surjective _ <|
      Function.RightInverse.surjective (g := map I (finsuppLEquivDirectSum R M s)) (fun _ ↦ by
      simp [← LinearMap.comp_apply, map_comp]))]
  rintro _ ⟨x, rfl⟩
  have : Function.Surjective ((lsum R fun i : s ↦ i.val • (LinearMap.id : M →ₗ[R] M)).codRestrict
    (I ^ n • ⊤) (fun _ ↦ by simp [← hs, span_smul_eq, smul_top_eq_range_lsum])) := by
    rw [← LinearMap.range_eq_top, LinearMap.range_codRestrict, ← hs, span_smul_eq,
      smul_top_eq_range_lsum]
    simp
  rcases map_surjective I this x with ⟨x, rfl⟩
  exact ⟨x, by rw [← LinearMap.comp_apply, map_comp, LinearMap.subtype_comp_codRestrict]⟩

set_option backward.isDefEq.respectTransparency.types false in
variable {I} in
/-- `AdicCompletion I M` is adic complete when `I` is finitely generated. -/
@[stacks 05GG "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a63bf8866ef608f3fe04f0d99d5fa92c7044a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
