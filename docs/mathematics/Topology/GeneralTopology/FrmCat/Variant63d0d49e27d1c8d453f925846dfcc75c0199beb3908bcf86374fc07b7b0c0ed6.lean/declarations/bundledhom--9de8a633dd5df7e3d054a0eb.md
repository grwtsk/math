# bundledHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be052b620580b652bb6ae48c81fe5a3fa9c9fd4d735dc8b290b2bf41b06a4fdb",
  "kind": "instance",
  "lexical_name": "bundledHom",
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
  "slug": "bundledhom--9de8a633dd5df7e3d054a0eb",
  "source": {
    "blob": "a0411fc6040a7d70c5e666e93f7aea7a7bf828ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9de8a633dd5df7e3d054a0eb5664bc795bb93347276410a501c9aa9ea6f8c412",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be052b620580b652bb6ae48c81fe5a3fa9c9fd4d735dc8b290b2bf41b06a4fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance bundledHom : BundledHom Hom where
  toFun {α β} _ _ := ((↑) : FrameHom α β → α → β)
  id {α} _ := FrameHom.id α
  comp _ _ _ := FrameHom.comp
  hom_ext _ _ := FunLike.coe_injective
#align Frm.bundled_hom FrmCat.bundledHom

-- Porting note: Originally `deriving instance LargeCategory, ConcreteCategory for FrmCat`
-- see https://github.com/leanprover-community/mathlib4/issues/5020
deriving instance LargeCategory, Category for FrmCat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0411fc6040a7d70c5e666e93f7aea7a7bf828ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
