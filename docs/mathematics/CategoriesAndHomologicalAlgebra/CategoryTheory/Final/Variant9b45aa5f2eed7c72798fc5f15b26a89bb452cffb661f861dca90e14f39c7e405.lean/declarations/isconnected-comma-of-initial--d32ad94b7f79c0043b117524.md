# isConnected_comma_of_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e094076288a1265a83fbed50fddb2586c553e6034289fe55e0499a6ca5c2ae0d",
  "kind": "instance",
  "lexical_name": "isConnected_comma_of_initial",
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
  "slug": "isconnected-comma-of-initial--d32ad94b7f79c0043b117524",
  "source": {
    "blob": "5629f5ad793367400acd445dc64b8cbcf53b25e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d32ad94b7f79c0043b11752479b14582872c452df615f8a3324d84237e04b184",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e094076288a1265a83fbed50fddb2586c553e6034289fe55e0499a6ca5c2ae0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance isConnected_comma_of_initial [IsConnected B] [L.Initial] : IsConnected (Comma L R) := by
  rwa [isConnected_iff_of_initial (snd L R)]

set_option backward.defeqAttrib.useBackward true in
/-- Let the following diagram commute up to isomorphism:

```
      L       R
  A  ---→ T  ←--- B
  |       |       |
  | F     | H     | G
  ↓       ↓       ↓
  A' ---→ T' ←--- B'
      L'      R'
```

Let `F`, `G`, `R` and `R'` be final and `B` be filtered. Then, the induced functor between the comma
categories of the first and second row of the diagram is final. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629f5ad793367400acd445dc64b8cbcf53b25e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
