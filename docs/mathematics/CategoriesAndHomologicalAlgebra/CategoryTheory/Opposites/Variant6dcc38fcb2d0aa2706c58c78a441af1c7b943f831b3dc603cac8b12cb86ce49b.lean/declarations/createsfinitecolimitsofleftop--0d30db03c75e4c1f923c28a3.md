# createsFiniteColimitsOfLeftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af6fe27eaa3d4b3c1ef6709e087c4c0df63de498d3c28a9e503fdbb945881ef7",
  "kind": "def",
  "lexical_name": "createsFiniteColimitsOfLeftOp",
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
  "slug": "createsfinitecolimitsofleftop--0d30db03c75e4c1f923c28a3",
  "source": {
    "blob": "fd3fad926cd44e0172a94237e886c95ad36c926c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 570,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d30db03c75e4c1f923c28a35650b5b821324bbdcac5c9880d9b066d4c53fc32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af6fe27eaa3d4b3c1ef6709e087c4c0df63de498d3c28a9e503fdbb945881ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsFiniteColimitsOfLeftOp (F : C ⥤ Dᵒᵖ) [CreatesFiniteLimits F.leftOp] :
    CreatesFiniteColimits F where
  createsFiniteColimits J _ _ := createsColimitsOfShapeOfLeftOp J F

/-- If `F.rightOp : C ⥤ Dᵒᵖ` creates finite limits, then `F : Cᵒᵖ ⥤ D` creates finite
colimits. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3fad926cd44e0172a94237e886c95ad36c926c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
