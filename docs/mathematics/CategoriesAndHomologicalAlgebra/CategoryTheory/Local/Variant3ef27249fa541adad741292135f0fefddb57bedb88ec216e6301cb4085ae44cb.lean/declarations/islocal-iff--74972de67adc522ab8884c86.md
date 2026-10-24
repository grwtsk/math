# isLocal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8472f02-c860-e6a2-4092-a0c51c7d9c0c",
  "kind": "lemma",
  "lexical_name": "isLocal_iff",
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
  "slug": "islocal-iff--74972de67adc522ab8884c86",
  "source": {
    "blob": "a8cfe3381cec01ac6812ffd54488749683e62d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant3ef27249fa541adad741292135f0fefddb57bedb88ec216e6301cb4085ae44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74972de67adc522ab8884c8667715e854b12f0da8f98cdc197968b704ccfd604",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant3ef27249fa541adad741292135f0fefddb57bedb88ec216e6301cb4085ae44cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8472f02-c860-e6a2-4092-a0c51c7d9c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_iff (Z : C) :
    W.isLocal Z ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y),
      W f → Function.Bijective (fun (g : _ ⟶ Z) ↦ f ≫ g) := Iff.rfl

/-- Given `W : MorphismProperty C`, this is the property of `W`-colocal objects, i.e.
the objects `X` such that for any `g : Y ⟶ Z` such that `W g` holds, the postcomposition
with `g` gives a bijection `(X ⟶ Y) ≃ (X ⟶ Z)`.
(See the file `Mathlib/CategoryTheory/Localization/Bousfield.lean` for the "dual" construction
`ObjectProperty.isColocal : ObjectProperty C → MorphismProperty C`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant3ef27249fa541adad741292135f0fefddb57bedb88ec216e6301cb4085ae44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant3ef27249fa541adad741292135f0fefddb57bedb88ec216e6301cb4085ae44cb.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8cfe3381cec01ac6812ffd54488749683e62d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
