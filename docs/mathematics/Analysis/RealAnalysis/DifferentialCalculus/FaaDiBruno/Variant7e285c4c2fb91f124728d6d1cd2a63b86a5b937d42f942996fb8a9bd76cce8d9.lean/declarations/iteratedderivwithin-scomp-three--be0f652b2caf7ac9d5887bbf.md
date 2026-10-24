# iteratedDerivWithin_scomp_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9b6084-5a9e-8dcf-f2a4-2138249d2f0d",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_scomp_three",
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
  "slug": "iteratedderivwithin-scomp-three--be0f652b2caf7ac9d5887bbf",
  "source": {
    "blob": "e0f50ac31fb17a14f013b69198cb12da51c07864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be0f652b2caf7ac9d5887bbf2fbf220fe8dcd7459c89e3070b10732d07bff87c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9b6084-5a9e-8dcf-f2a4-2138249d2f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_scomp_three
    (hg : ContDiffWithinAt 𝕜 3 g t (f x)) (hf : ContDiffWithinAt 𝕜 3 f s x)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hst : MapsTo f s t) :
    iteratedDerivWithin 3 (g ∘ f) s x =
      derivWithin f s x ^ 3 • iteratedDerivWithin 3 g t (f x) +
      3 • iteratedDerivWithin 2 f s x • derivWithin f s x • iteratedDerivWithin 2 g t (f x) +
      iteratedDerivWithin 3 f s x • derivWithin g t (f x) := by
  rw [iteratedDerivWithin_vcomp_three hg hf ht hs hx hst]
  simp? [← derivWithin_fderivWithin, mul_smul, smul_comm (iteratedDerivWithin 2 f s x),
      iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod] says
    simp only [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod, Finset.prod_const,
      Finset.card_univ, Fintype.card_fin, Fin.prod_univ_two, Fin.isValue, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_fin_one, mul_smul,
      smul_comm (iteratedDerivWithin 2 f s x), ← derivWithin_fderivWithin,
      ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply, add_left_inj]
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f50ac31fb17a14f013b69198cb12da51c07864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
