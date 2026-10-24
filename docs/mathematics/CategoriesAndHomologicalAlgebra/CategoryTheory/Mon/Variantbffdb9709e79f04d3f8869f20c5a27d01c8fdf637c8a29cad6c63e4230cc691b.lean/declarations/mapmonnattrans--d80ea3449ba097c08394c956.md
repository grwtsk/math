# mapMonNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf4714a0d00155154793838d6483f14687bbd15c0aae34ebf3a955f6a56c78ac",
  "kind": "def",
  "lexical_name": "mapMonNatTrans",
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
  "slug": "mapmonnattrans--d80ea3449ba097c08394c956",
  "source": {
    "blob": "cbacd36734805e88f5d6ac3532c3d10c6133de6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 916,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d80ea3449ba097c08394c9561c4a24d608a3a0a112c89a6fa504736259f6817d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf4714a0d00155154793838d6483f14687bbd15c0aae34ebf3a955f6a56c78ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapMonNatTrans (f : F ⟶ F') [NatTrans.IsMonoidal f] : F.mapMon ⟶ F'.mapMon where
  app X := .mk' (f.app _)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Natural isomorphisms between functors lift to monoid objects. -/
@[to_additive (attr := simps!)
/-- Natural isomorphisms between functors lift to additive monoid objects. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbacd36734805e88f5d6ac3532c3d10c6133de6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
