# hasCardinalLT_arrow_walkingParallelFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d44347e0-2368-4260-9215-aedce34aa4d2",
  "kind": "lemma",
  "lexical_name": "hasCardinalLT_arrow_walkingParallelFamily",
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
  "slug": "hascardinallt-arrow-walkingparallelfamily--f8dafa9c09805961b282c867",
  "source": {
    "blob": "2c07023a2fd2c1a61dfc17a699082c4f2f4eb017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8dafa9c09805961b282c867d263bb01971b182a25cb07ba9e6e2daaf436fe68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d44347e0-2368-4260-9215-aedce34aa4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCardinalLT_arrow_walkingParallelFamily {T : Type u}
    {κ : Cardinal.{w}} (hT : HasCardinalLT T κ) (hκ : Cardinal.aleph0 ≤ κ) :
    HasCardinalLT (Arrow (WalkingParallelFamily T)) κ := by
  simpa only [hasCardinalLT_iff_of_equiv (WalkingParallelFamily.arrowEquiv T),
    hasCardinalLT_option_iff _ _ hκ] using hT

namespace IsCardinalFiltered

variable {J : Type u} [Category.{v} J] {κ : Cardinal.{w}} [hκ : Fact κ.IsRegular]
  [IsCardinalFiltered J κ]

/-- A choice of cocone for a functor `F : A ⥤ J` such that `HasCardinatLT (Arrow A) κ`
when `J` is a `κ`-filtered category, and `Arrow A` has cardinality `< κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c07023a2fd2c1a61dfc17a699082c4f2f4eb017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
