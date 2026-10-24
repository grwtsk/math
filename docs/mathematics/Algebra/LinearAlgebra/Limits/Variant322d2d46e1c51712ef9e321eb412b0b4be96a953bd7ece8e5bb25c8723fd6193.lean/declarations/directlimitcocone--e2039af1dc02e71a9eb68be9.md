# directLimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72c0b57dd2c5faf8b67aeb79f92a49d3b6e7db8225087bd33b3de3ab47a41855",
  "kind": "def",
  "lexical_name": "directLimitCocone",
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
  "slug": "directlimitcocone--e2039af1dc02e71a9eb68be9",
  "source": {
    "blob": "eb330da3d6e39d4f9b0ee43020e39c8df8e0b98b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant322d2d46e1c51712ef9e321eb412b0b4be96a953bd7ece8e5bb25c8723fd6193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2039af1dc02e71a9eb68be9d2b7f806fcbb372cf28458520c2d3f0554c59d31",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variant322d2d46e1c51712ef9e321eb412b0b4be96a953bd7ece8e5bb25c8723fd6193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72c0b57dd2c5faf8b67aeb79f92a49d3b6e7db8225087bd33b3de3ab47a41855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directLimitCocone : Cocone (directLimitDiagram G f) where
  pt := ModuleCat.of R <| DirectLimit G f
  ι :=
    { app := fun x => ofHom (Module.DirectLimit.of R ι G f x)
      naturality := fun _ _ hij => by
        ext
        exact DirectLimit.of_f }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The unbundled `directLimit` of modules is a colimit
in the sense of `CategoryTheory`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variant322d2d46e1c51712ef9e321eb412b0b4be96a953bd7ece8e5bb25c8723fd6193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variant322d2d46e1c51712ef9e321eb412b0b4be96a953bd7ece8e5bb25c8723fd6193.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb330da3d6e39d4f9b0ee43020e39c8df8e0b98b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
