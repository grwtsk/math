# ModelWithCorners.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94dfcfc4f3087217b83f90fbeb12ab5178c140507cd2c55c3f999a09e86c4f2f",
  "kind": "def",
  "lexical_name": "ModelWithCorners.prod",
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
  "slug": "modelwithcorners-prod--58d4f94913747ae3724aeb50",
  "source": {
    "blob": "5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 399,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58d4f94913747ae3724aeb50d65b6e9eab29ed9e4d5e2a92d37204b3f681bc1b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94dfcfc4f3087217b83f90fbeb12ab5178c140507cd2c55c3f999a09e86c4f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModelWithCorners.prod {𝕜 : Type u} [NontriviallyNormedField 𝕜] {E : Type v}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] {H : Type w} [TopologicalSpace H]
    (I : ModelWithCorners 𝕜 E H) {E' : Type v'} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    {H' : Type w'} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 E' H') :
    ModelWithCorners 𝕜 (E × E') (ModelProd H H') :=
  { I.toPartialEquiv.prod I'.toPartialEquiv with
    toFun := fun x => (I x.1, I' x.2)
    invFun := fun x => (I.symm x.1, I'.symm x.2)
    source := { x | x.1 ∈ I.source ∧ x.2 ∈ I'.source }
    source_eq := by simp only [setOf_true, mfld_simps]
    uniqueDiffOn' := I.uniqueDiffOn'.prod I'.uniqueDiffOn'
    target_subset_closure_interior := by
      simp only [PartialEquiv.prod_target, target_eq, interior_prod_eq, closure_prod_eq]
      exact Set.prod_mono I.range_subset_closure_interior I'.range_subset_closure_interior
    continuous_toFun := I.continuous_toFun.prodMap I'.continuous_toFun
    continuous_invFun := I.continuous_invFun.prodMap I'.continuous_invFun }

/-- Given a finite family of `ModelWithCorners` `I i` on `(E i, H i)`, we define the model with
corners `pi I` on `(Π i, E i, ModelPi H)`. See note [Manifold type tags] for explanation about
`ModelPi H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
