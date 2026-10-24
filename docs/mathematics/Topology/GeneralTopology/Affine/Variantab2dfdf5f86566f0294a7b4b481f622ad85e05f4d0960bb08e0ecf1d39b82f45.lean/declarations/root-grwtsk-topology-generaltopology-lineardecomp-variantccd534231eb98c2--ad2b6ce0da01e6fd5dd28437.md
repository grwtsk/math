# _root_.GRWTSK.Topology.GeneralTopology.LinearDecomp.Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.Filter.Tendsto.lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b3836ad-e55e-424b-0281-8360b1e363df",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.LinearDecomp.Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.Filter.Tendsto.lineMap",
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
  "slug": "root-grwtsk-topology-generaltopology-lineardecomp-variantccd534231eb98c2--ad2b6ce0da01e6fd5dd28437",
  "source": {
    "blob": "2daf83aae77c216d122ac4b5c300878d3d06bf95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad2b6ce0da01e6fd5dd28437b1576e36f104074400565f9eba9c1caaa9a9f28e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3836ad-e55e-424b-0281-8360b1e363df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.LinearDecomp.Variantccd534231eb98c2a00eb2e5e346b47dce737e5165676cc129d08d02966ee05b1.Filter.Tendsto.lineMap {f₁ f₂ : α → P} {g : α → R} {p₁ p₂ : P} {c : R}
    (h₁ : Tendsto f₁ l (𝓝 p₁)) (h₂ : Tendsto f₂ l (𝓝 p₂)) (hg : Tendsto g l (𝓝 c)) :
    Tendsto (fun x => AffineMap.lineMap (f₁ x) (f₂ x) (g x)) l (𝓝 <| AffineMap.lineMap p₁ p₂ c) :=
  (hg.smul (h₂.vsub h₁)).vadd h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2daf83aae77c216d122ac4b5c300878d3d06bf95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
