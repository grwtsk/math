# tangentMapWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68703d90a58081b3c2b0e2341fd17ac7bb832a836781b67a04a756ad6000584b",
  "kind": "def",
  "lexical_name": "tangentMapWithin",
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
  "slug": "tangentmapwithin--2d50ce5241129c817ab51cf6",
  "source": {
    "blob": "f7b06aec9c2f5d2ae4645ff68085386565fcf2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 345,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d50ce5241129c817ab51cf622f6fc8d5ea72ed95e6b64ee1007cb75f3ea43f8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68703d90a58081b3c2b0e2341fd17ac7bb832a836781b67a04a756ad6000584b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tangentMapWithin (f : M → M') (s : Set M) : TangentBundle I M → TangentBundle I' M' := fun p =>
  ⟨f p.1, (mfderivWithin I I' f s p.1 : TangentSpace I p.1 → TangentSpace I' (f p.1)) p.2⟩

variable (I I') in
/-- The derivative, as a map between the tangent bundles -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b06aec9c2f5d2ae4645ff68085386565fcf2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
