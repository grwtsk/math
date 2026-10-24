# counit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb511e5513ac9a465193a797589423734408f61aca5c22cd037cfc000a6f90d5",
  "kind": "abbrev",
  "lexical_name": "counit",
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
  "slug": "counit--82848ced8fe7ccba635850a3",
  "source": {
    "blob": "7d36dbbe13ff641f0baa99952fe506a1460be5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 305,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82848ced8fe7ccba635850a389480610a25bab879c5c88ca2d195c9f9316cdea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb511e5513ac9a465193a797589423734408f61aca5c22cd037cfc000a6f90d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev counit (t : RightExtension f g) : f ≫ t.extension ⟶ g := t.hom

/-- Construct a right extension from a 1-morphism and a 2-morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d36dbbe13ff641f0baa99952fe506a1460be5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
