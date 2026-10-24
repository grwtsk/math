# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f04ebba17a19269d574b1c94464d6bc81c3b65dcbd7f1b63a19bf4ed6da9b4f4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a6de5c4437355ed79dddaa97",
  "source": {
    "blob": "47bfb5c18eeeb463564dbb282d49999fd44b76ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variant8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6de5c4437355ed79dddaa97e5fd0a105fa8a5cf7c610d1ecd2e1420aeffc776",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variant8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f04ebba17a19269d574b1c94464d6bc81c3b65dcbd7f1b63a19bf4ed6da9b4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Preadditive C] : Functor.Additive (inverse C) where

/-- The unit isomorphism of the equivalence -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variant8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variant8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47bfb5c18eeeb463564dbb282d49999fd44b76ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
