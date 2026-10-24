# createsColimitsOfSizeUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb3235cbc24976b3c10ef16acf80be0dfcbbb0d15105c883e0e608bf425d094a",
  "kind": "def",
  "lexical_name": "createsColimitsOfSizeUnop",
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
  "slug": "createscolimitsofsizeunop--b9ad219a984e3387577d9931",
  "source": {
    "blob": "fd3fad926cd44e0172a94237e886c95ad36c926c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 363,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9ad219a984e3387577d9931ef4b68f42d94a8cb18ada35f2c9e376000fd0dd0",
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

Occurrence: `declaration:bb3235cbc24976b3c10ef16acf80be0dfcbbb0d15105c883e0e608bf425d094a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitsOfSizeUnop (F : Cᵒᵖ ⥤ Dᵒᵖ) [CreatesLimitsOfSize.{w, w'} F] :
    CreatesColimitsOfSize.{w, w'} F.unop where
  CreatesColimitsOfShape {_} _ := createsColimitsOfShapeUnop _ _

/-- If `F.op : Cᵒᵖ ⥤ Dᵒᵖ` creates colimits, then `F : C ⥤ D` creates limits. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6dcc38fcb2d0aa2706c58c78a441af1c7b943f831b3dc603cac8b12cb86ce49b.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3fad926cd44e0172a94237e886c95ad36c926c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
