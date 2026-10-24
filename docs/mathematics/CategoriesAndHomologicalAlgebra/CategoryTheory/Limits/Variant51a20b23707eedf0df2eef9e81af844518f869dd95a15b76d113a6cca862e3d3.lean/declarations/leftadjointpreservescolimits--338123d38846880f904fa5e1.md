# leftAdjointPreservesColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28ceb4b1e749c70022ddeee89b17e3b53115de50bc772de3a3184c2dd302e0b8",
  "kind": "def",
  "lexical_name": "leftAdjointPreservesColimits",
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
  "slug": "leftadjointpreservescolimits--338123d38846880f904fa5e1",
  "source": {
    "blob": "fcd5c405348ac3aadd15a07ac60beae012f11538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:338123d38846880f904fa5e1cc2f3576c7296a80b81251adb62a6862ced88758",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28ceb4b1e749c70022ddeee89b17e3b53115de50bc772de3a3184c2dd302e0b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointPreservesColimits : PreservesColimitsOfSize.{v, u} F where
  preservesColimitsOfShape :=
    { preservesColimit :=
        { preserves := fun hc =>
            IsColimit.isoUniqueCoconeMorphism.inv fun _ =>
              @Equiv.unique _ _ (IsColimit.isoUniqueCoconeMorphism.hom hc _)
                ((adj.functorialityIsLeftAdjoint _).adj.homEquiv _ _) } }
#align category_theory.adjunction.left_adjoint_preserves_colimits CategoryTheory.Adjunction.leftAdjointPreservesColimits

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd5c405348ac3aadd15a07ac60beae012f11538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
