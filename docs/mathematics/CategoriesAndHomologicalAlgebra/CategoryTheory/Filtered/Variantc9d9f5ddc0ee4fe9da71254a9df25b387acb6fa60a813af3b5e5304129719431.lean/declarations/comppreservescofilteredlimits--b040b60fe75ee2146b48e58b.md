# compPreservesCofilteredLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:894470ab628021ac74f0cec11186f5213c45324ac1c6791b7a3fb3d0c5c962c6",
  "kind": "instance",
  "lexical_name": "compPreservesCofilteredLimits",
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
  "slug": "comppreservescofilteredlimits--b040b60fe75ee2146b48e58b",
  "source": {
    "blob": "3614260515e38f83f3f0ba21b07b6996cefbe64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b040b60fe75ee2146b48e58b6d4527b3ff9afa3c3052c27522f6ff1a83dea9eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:894470ab628021ac74f0cec11186f5213c45324ac1c6791b7a3fb3d0c5c962c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compPreservesCofilteredLimits (F : C ⥤ D) (G : D ⥤ E) [PreservesCofilteredLimits F]
    [PreservesCofilteredLimits G] : PreservesCofilteredLimits (F ⋙ G)
    where preserves_cofiltered_limits _ := inferInstance
#align category_theory.limits.comp_preserves_cofiltered_limits CategoryTheory.Limits.compPreservesCofilteredLimits

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3614260515e38f83f3f0ba21b07b6996cefbe64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
