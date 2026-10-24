# _root_.GRWTSK.Topology.GeneralTopology.ContinuousMapZero.Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.UniformEquiv.arrowCongrLeft₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f199749fbd360fafa9ae26b6aef3bb0280353c556a6c6d032cdab76c9257675",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousMapZero.Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.UniformEquiv.arrowCongrLeft₀",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousmapzero-variant58fa04fb28--071dd5b8590b57e4e6b0babd",
  "source": {
    "blob": "98808829c9cf37d45559bc0acaf2079c9a43c30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:071dd5b8590b57e4e6b0babd475cdadc0df1e0a6c93ecb571351ba29d8bf7350",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f199749fbd360fafa9ae26b6aef3bb0280353c556a6c6d032cdab76c9257675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.ContinuousMapZero.Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.UniformEquiv.arrowCongrLeft₀ {Y : Type*} [TopologicalSpace Y] [Zero Y] (f : X ≃ₜ Y)
    (hf : f 0 = 0) : C(X, R)₀ ≃ᵤ C(Y, R)₀ where
  toFun g := g.comp ⟨f.symm, (f.toEquiv.apply_eq_iff_eq_symm_apply.eq ▸ hf).symm⟩
  invFun g := g.comp ⟨f, hf⟩
  left_inv g := ext fun _ ↦ congrArg g <| f.left_inv _
  right_inv g := ext fun _ ↦ congrArg g <| f.right_inv _
  uniformContinuous_toFun := isUniformEmbedding_toContinuousMap.uniformContinuous_iff.mpr <|
    ContinuousMap.uniformContinuous_comp_left (f.symm : C(Y, X)) |>.comp
    isUniformEmbedding_toContinuousMap.uniformContinuous
  uniformContinuous_invFun := isUniformEmbedding_toContinuousMap.uniformContinuous_iff.mpr <|
    ContinuousMap.uniformContinuous_comp_left (f : C(X, Y)) |>.comp
    isUniformEmbedding_toContinuousMap.uniformContinuous

end UniformSpace

section CompHoms

variable {X Y M R S : Type*} [Zero X] [Zero Y] [CommSemiring M]
  [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace R] [TopologicalSpace S]
  [CommSemiring R] [StarRing R] [IsTopologicalSemiring R] [ContinuousStar R]
  [CommSemiring S] [StarRing S] [IsTopologicalSemiring S] [ContinuousStar S]
  [Module M R] [Module M S] [ContinuousConstSMul M R] [ContinuousConstSMul M S]

variable (R) in
/-- The functor `C(·, R)₀` from topological spaces with zero (and `ContinuousMapZero` maps) to
non-unital star algebras. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98808829c9cf37d45559bc0acaf2079c9a43c30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
