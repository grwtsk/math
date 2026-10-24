# Homeomorph.toCocompactMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bba5b8546999cb8eb055acd07b56cd43e3f4cc796827b1e69dc848e05a4e9298",
  "kind": "def",
  "lexical_name": "Homeomorph.toCocompactMap",
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
  "slug": "homeomorph-tococompactmap--901196ae3366e9c362f678a1",
  "source": {
    "blob": "aa55024fcd8108469d6e0621f55ad636a726c1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:901196ae3366e9c362f678a13943ffacbcb1643844f13a210989050a99dc3563",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bba5b8546999cb8eb055acd07b56cd43e3f4cc796827b1e69dc848e05a4e9298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homeomorph.toCocompactMap {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
    (f : α ≃ₜ β) : CocompactMap α β where
  toFun := f
  continuous_toFun := f.continuous
  cocompact_tendsto' := by
    refine' CocompactMap.tendsto_of_forall_preimage fun K hK => _
    erw [K.preimage_equiv_eq_image_symm]
    exact hK.image f.symm.continuous
#align homeomorph.to_cocompact_map Homeomorph.toCocompactMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa55024fcd8108469d6e0621f55ad636a726c1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
