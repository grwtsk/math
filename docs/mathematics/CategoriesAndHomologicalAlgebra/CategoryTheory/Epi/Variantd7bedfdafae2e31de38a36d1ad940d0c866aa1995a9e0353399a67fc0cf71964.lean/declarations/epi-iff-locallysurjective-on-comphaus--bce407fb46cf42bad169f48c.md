# epi_iff_locallySurjective_on_compHaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b204752c-a619-3fdc-30bf-2aee340a9024",
  "kind": "lemma",
  "lexical_name": "epi_iff_locallySurjective_on_compHaus",
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
  "slug": "epi-iff-locallysurjective-on-comphaus--bce407fb46cf42bad169f48c",
  "source": {
    "blob": "c182248450517067ba3534f5f089f8ca5b48d833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bce407fb46cf42bad169f48c8a491872d1d56412d938a460bbc08fe2763d8483",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b204752c-a619-3fdc-30bf-2aee340a9024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : ToType (Y.val.obj ⟨S⟩)),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : ToType (X.val.obj ⟨S'⟩)),
        f.val.app ⟨S'⟩ x = Y.val.map ⟨φ⟩ y) := by
  rw [← isLocallySurjective_iff_epi', coherentTopology.isLocallySurjective_iff,
    regularTopology.isLocallySurjective_iff]
  simp_rw [((CompHaus.effectiveEpi_tfae _).out 0 2 :)]

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
variable
  [PreservesFiniteProducts (CategoryTheory.forget A)]
  [∀ (X : CompHausᵒᵖ), HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
  [(extensiveTopology Stonean).WEqualsLocallyBijective A]
  [HasSheafify (extensiveTopology Stonean) A]
  [(extensiveTopology Stonean.{u}).HasSheafCompose (CategoryTheory.forget A)]
  [Balanced (Sheaf (extensiveTopology Stonean) A)] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c182248450517067ba3534f5f089f8ca5b48d833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
