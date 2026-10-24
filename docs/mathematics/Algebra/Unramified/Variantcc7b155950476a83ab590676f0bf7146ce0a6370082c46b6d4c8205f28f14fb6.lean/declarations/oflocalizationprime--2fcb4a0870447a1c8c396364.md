# ofLocalizationPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f0952a47462ebab8dd138151e0476fb107362ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be843984-c90a-aa2a-ea8f-50c629361838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe4e73ce-5933-60f9-6822-292ff497e802",
  "kind": "lemma",
  "lexical_name": "ofLocalizationPrime",
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
  "slug": "oflocalizationprime--2fcb4a0870447a1c8c396364",
  "source": {
    "blob": "5f0952a47462ebab8dd138151e0476fb107362ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fcb4a0870447a1c8c396364e753874db1312d2f04c7df25293d330a2563352b",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4e73ce-5933-60f9-6822-292ff497e802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofLocalizationPrime :
    OfLocalizationPrime FormallyUnramified := by
  intros R S _ _ f H
  algebraize [f]
  rw [FormallyUnramified, ← Algebra.unramifiedLocus_eq_univ_iff, Set.eq_univ_iff_forall]
  intro x
  let Rₓ := Localization.AtPrime (x.asIdeal.comap f)
  let Sₓ := Localization.AtPrime x.asIdeal
  have := Algebra.FormallyUnramified.of_isLocalization (Rₘ := Rₓ) (x.asIdeal.comap f).primeCompl
  letI : Algebra Rₓ Sₓ := (Localization.localRingHom _ _ _ rfl).toAlgebra
  have : IsScalarTower R Rₓ Sₓ := .of_algebraMap_eq
    fun x ↦ (Localization.localRingHom_to_map _ _ _ rfl x).symm
  have : Algebra.FormallyUnramified Rₓ Sₓ := H _ _
  exact Algebra.FormallyUnramified.comp R Rₓ Sₓ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0952a47462ebab8dd138151e0476fb107362ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
