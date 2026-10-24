# IsRegularEpi.of_epi_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64a2fb0c-970e-c83b-f966-8f112bb66a0f",
  "kind": "lemma",
  "lexical_name": "IsRegularEpi.of_epi_of_exists",
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
  "slug": "isregularepi-of-epi-of-exists--9c98c054151037d7cb5df8a1",
  "source": {
    "blob": "224c3ae61f1772c8991abfefee0c4e681dc5b75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 469,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c98c054151037d7cb5df8a1464a4d7236cb92a6fd4c07e4aeb346cc9d1eb222",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64a2fb0c-970e-c83b-f966-8f112bb66a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRegularEpi.of_epi_of_exists {X B : C} {f : X ⟶ B} [HasPullback f f] [Epi f]
    (h : ∀ ⦃Z : C⦄ ⦃g : X ⟶ Z⦄, pullback.fst f f ≫ g = pullback.snd f f ≫ g →
      ∃ (u : B ⟶ Z), f ≫ u = g) :
    IsRegularEpi f := by
  refine ⟨⟨regularEpiOfKernelPair _ <| Cofork.IsColimit.mk' _ fun s ↦ ?_⟩⟩
  choose g hg using h s.condition
  refine ⟨g, hg, fun hm ↦ ?_⟩
  rwa [← cancel_epi f, hg]

/-- The data of an `EffectiveEpi` structure on a `RegularEpi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c3ae61f1772c8991abfefee0c4e681dc5b75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
