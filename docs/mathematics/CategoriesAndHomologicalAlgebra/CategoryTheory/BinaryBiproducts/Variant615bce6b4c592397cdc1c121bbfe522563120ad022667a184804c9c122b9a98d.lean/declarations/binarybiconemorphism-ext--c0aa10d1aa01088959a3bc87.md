# BinaryBiconeMorphism.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d921af6-8af9-67c3-582a-4ffffa0531f3",
  "kind": "theorem",
  "lexical_name": "BinaryBiconeMorphism.ext",
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
  "slug": "binarybiconemorphism-ext--c0aa10d1aa01088959a3bc87",
  "source": {
    "blob": "10d11adfd00d6d044aea5f2906d8ee927a0d8752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant615bce6b4c592397cdc1c121bbfe522563120ad022667a184804c9c122b9a98d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0aa10d1aa01088959a3bc8717e11a9a4697c0dcf0202b1ca034403d330feab1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant615bce6b4c592397cdc1c121bbfe522563120ad022667a184804c9c122b9a98d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d921af6-8af9-67c3-582a-4ffffa0531f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BinaryBiconeMorphism.ext {P Q : C} {c c' : BinaryBicone P Q}
    (f g : c ⟶ c') (w : f.hom = g.hom) : f = g := by
  cases f
  cases g
  congr

namespace BinaryBicones

/-- To give an isomorphism between cocones, it suffices to give an
  isomorphism between their vertices which commutes with the cocone
  maps. -/
@[aesop apply safe (rule_sets := [CategoryTheory]), simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant615bce6b4c592397cdc1c121bbfe522563120ad022667a184804c9c122b9a98d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant615bce6b4c592397cdc1c121bbfe522563120ad022667a184804c9c122b9a98d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d11adfd00d6d044aea5f2906d8ee927a0d8752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
