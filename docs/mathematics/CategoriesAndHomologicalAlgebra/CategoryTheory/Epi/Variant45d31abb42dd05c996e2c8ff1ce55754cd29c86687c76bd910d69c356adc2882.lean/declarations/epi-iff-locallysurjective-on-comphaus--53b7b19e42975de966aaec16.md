# epi_iff_locallySurjective_on_compHaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "113e16f54b2c8c316d7a37c39358414bf3796523",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99e324c6-41a2-edca-89cc-fa55c1d84e59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7a83ac3-25dc-7e31-0ffa-d23448a3ccfb",
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
  "slug": "epi-iff-locallysurjective-on-comphaus--53b7b19e42975de966aaec16",
  "source": {
    "blob": "113e16f54b2c8c316d7a37c39358414bf3796523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b7b19e42975de966aaec168d95710a45e137bf7a1ce2299e5c37dd50b2bc58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7a83ac3-25dc-7e31-0ffa-d23448a3ccfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `113e16f54b2c8c316d7a37c39358414bf3796523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
