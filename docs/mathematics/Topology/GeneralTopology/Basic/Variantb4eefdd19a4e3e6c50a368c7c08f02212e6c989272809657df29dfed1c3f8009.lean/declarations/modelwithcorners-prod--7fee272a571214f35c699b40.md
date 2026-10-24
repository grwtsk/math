# ModelWithCorners.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b3096be2d75284b13d37289d07df96a6defa19260fd559fdc51d1f5ce05b8b0",
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
  "slug": "modelwithcorners-prod--7fee272a571214f35c699b40",
  "source": {
    "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fee272a571214f35c699b404d6038e2371fff972c32de4620bc9507e7c541f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b3096be2d75284b13d37289d07df96a6defa19260fd559fdc51d1f5ce05b8b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–522.

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
    source_eq := by simp only [ofPred_true, mfld_simps]
    convex_range' := by
      have : range (fun (x : ModelProd H H') ↦ (I x.1, I' x.2)) = range (Prod.map I I') := rfl
      rw [this, Set.range_prodMap]
      split_ifs with h
      · let := h.rclike
        let := NormedSpace.restrictScalars ℝ 𝕜 E; let := NormedSpace.restrictScalars ℝ 𝕜 E'
        exact I.convex_range.prod I'.convex_range
      · simp [range_eq_univ_of_not_isRCLikeNormedField, h]
    nonempty_interior' := by
      have : range (fun (x : ModelProd H H') ↦ (I x.1, I' x.2)) = range (Prod.map I I') := rfl
      simp [this, interior_prod_eq, nonempty_interior]
    continuous_toFun := I.continuous_toFun.prodMap I'.continuous_toFun
    continuous_invFun := I.continuous_invFun.prodMap I'.continuous_invFun }

/-- Given a finite family of `ModelWithCorners` `I i` on `(E i, H i)`, we define the model with
corners `pi I` on `(Π i, E i, ModelPi H)`. See note [Manifold type tags] for explanation about
`ModelPi H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680c70c7452343c30c386f7b04c79ff48cd7f3ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
