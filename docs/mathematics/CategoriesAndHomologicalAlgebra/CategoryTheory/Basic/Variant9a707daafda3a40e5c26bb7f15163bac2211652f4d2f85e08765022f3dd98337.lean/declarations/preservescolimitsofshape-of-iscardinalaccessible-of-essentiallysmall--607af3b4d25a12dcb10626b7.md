# preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8c834d-6f75-a77b-870d-861d825c47f7",
  "kind": "lemma",
  "lexical_name": "preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall",
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
  "slug": "preservescolimitsofshape-of-iscardinalaccessible-of-essentiallysmall--607af3b4d25a12dcb10626b7",
  "source": {
    "blob": "d540c20ffe00269ef829e75ebff32055c05140e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:607af3b4d25a12dcb10626b7e0bda50e6a14e6173d20ee7314986d56f1ad1f7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8c834d-6f75-a77b-870d-861d825c47f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall
    [F.IsCardinalAccessible κ]
    (J : Type u₃) [Category.{v₃} J] [EssentiallySmall.{w} J] [IsCardinalFiltered J κ] :
    PreservesColimitsOfShape J F := by
  have := IsCardinalFiltered.of_equivalence κ (equivSmallModel.{w} J)
  have := F.preservesColimitsOfShape_of_isCardinalAccessible κ (SmallModel.{w} J)
  exact preservesColimitsOfShape_of_equiv (equivSmallModel.{w} J).symm F

variable {κ} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d540c20ffe00269ef829e75ebff32055c05140e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
