# freeAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b0f9d4ce892dfa0268424477ab42d6d76332b940bbc133564f736f44b89c1d7",
  "kind": "def",
  "lexical_name": "freeAdj",
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
  "slug": "freeadj--d9ed45e5dee62d88126b7950",
  "source": {
    "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9ed45e5dee62d88126b79501218cea94f49d3fac34b3839867e7a3027948f06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b0f9d4ce892dfa0268424477ab42d6d76332b940bbc133564f736f44b89c1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeAdj : free.{max v u} R ⊣ forget₂ (TopModuleCat.{max v u} R) TopCat.{max v u} where
  unit :=
  { app X := TopCat.ofHom ⟨(Finsupp.single · 1),
      continuous_iff_coinduced_le.mpr (le_sInf fun _ h ↦ h.2.2)⟩,
    naturality {X Y} f := by ext x; simp [freeMap_map] }
  counit :=
  { app X := ConcreteCategory.ofHom (C := TopModuleCat R) ⟨Finsupp.lift _ R X id, by
      rw [continuous_iff_le_induced]
      refine sInf_le ⟨continuousSMul_induced (Finsupp.lift _ R X id),
        continuousAdd_induced (Finsupp.lift _ R X id), ?_⟩
      rw [coinduced_le_iff_le_induced, induced_compose]
      convert! induced_id.symm.le
      ext
      simp [coe_freeObj]⟩,
    naturality {X Y} f := by
      ext1
      apply ContinuousLinearMap.coe_injective
      refine Finsupp.lhom_ext' fun a ↦ LinearMap.ext_ring ?_
      dsimp [freeObj, freeMap]
      simp }
  left_triangle_components X := by
    ext1
    apply ContinuousLinearMap.coe_injective
    refine Finsupp.lhom_ext' fun a ↦ LinearMap.ext_ring ?_
    simp [freeMap, freeObj]
  right_triangle_components X := by
    ext
    simp [freeObj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32a9367052e84ebe59e0ed1f2da77ed36d16d05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
