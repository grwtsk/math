# map_equiv_traceDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450d1ddf-0dbc-073f-6937-19ddd12a4e64",
  "kind": "lemma",
  "lexical_name": "map_equiv_traceDual",
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
  "slug": "map-equiv-tracedual--d501589de9edcc4b57983aba",
  "source": {
    "blob": "80aa2fd72bb8b22bf434ee45037d3305580fea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d501589de9edcc4b57983aba199dc1b8aa568e9756e50e63ba1c03047303d5b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450d1ddf-0dbc-073f-6937-19ddd12a4e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_equiv_traceDual [IsDomain A] [IsFractionRing B L] [IsDomain B]
    [FaithfulSMul A B] (I : Submodule B (FractionRing B)) :
    (traceDual A (FractionRing A) I).map (FractionRing.algEquiv B L).toLinearMap =
      traceDual A K (I.map (FractionRing.algEquiv B L).toLinearMap) := by
  change Submodule.map (FractionRing.algEquiv B L).toLinearEquiv.toLinearMap _ =
    traceDual A K (I.map (FractionRing.algEquiv B L).toLinearEquiv.toLinearMap)
  rw [Submodule.map_equiv_eq_comap_symm, Submodule.map_equiv_eq_comap_symm]
  ext x
  simp only [traceDual, Submodule.mem_comap]
  apply (FractionRing.algEquiv B L).forall_congr
  simp only [restrictScalars_mem, LinearEquiv.coe_coe, AlgEquiv.coe_symm_toLinearEquiv,
    traceForm_apply, mem_one, AlgEquiv.toEquiv_eq_coe, EquivLike.coe_coe, mem_comap,
    AlgEquiv.symm_apply_apply]
  refine fun {y} ↦ (forall_congr' fun hy ↦ ?_)
  rw [Algebra.trace_eq_of_equiv_equiv (FractionRing.algEquiv A K).toRingEquiv
    (FractionRing.algEquiv B L).toRingEquiv]
  swap
  · ext
    exact IsFractionRing.algEquiv_commutes (FractionRing.algEquiv A K) (FractionRing.algEquiv B L) _
  simp only [map_mul, AlgEquiv.coe_ringEquiv,
    AlgEquiv.apply_symm_apply, ← AlgEquiv.symm_toRingEquiv, AlgEquiv.algebraMap_eq_apply]

variable [IsIntegrallyClosed A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80aa2fd72bb8b22bf434ee45037d3305580fea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
