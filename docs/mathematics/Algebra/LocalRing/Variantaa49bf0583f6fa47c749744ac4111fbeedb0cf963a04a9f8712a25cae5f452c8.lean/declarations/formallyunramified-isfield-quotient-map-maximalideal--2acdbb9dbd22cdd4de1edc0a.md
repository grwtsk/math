# FormallyUnramified.isField_quotient_map_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71ed6e4b2b0de24026c038dc3bc9423a149e5024",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa49bf0583f6fa47c749744ac4111fbeedb0cf963a04a9f8712a25cae5f452c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cc6a2ec-f5b8-b9ce-fffe-589e26337fa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c929f36e-976e-4e1b-0667-e59c80195bff",
  "kind": "lemma",
  "lexical_name": "FormallyUnramified.isField_quotient_map_maximalIdeal",
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
  "slug": "formallyunramified-isfield-quotient-map-maximalideal--2acdbb9dbd22cdd4de1edc0a",
  "source": {
    "blob": "71ed6e4b2b0de24026c038dc3bc9423a149e5024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/Algebra/LocalRing/Variantaa49bf0583f6fa47c749744ac4111fbeedb0cf963a04a9f8712a25cae5f452c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2acdbb9dbd22cdd4de1edc0a131946edf77770a43ef1cb0a0d01a3fd3ad1303c",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variantaa49bf0583f6fa47c749744ac4111fbeedb0cf963a04a9f8712a25cae5f452c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c929f36e-976e-4e1b-0667-e59c80195bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FormallyUnramified.isField_quotient_map_maximalIdeal [FormallyUnramified R S] :
    IsField (S ⧸ (maximalIdeal R).map (algebraMap R S)) := by
  let mR := (maximalIdeal R).map (algebraMap R S)
  have hmR : mR ≤ maximalIdeal S := ((local_hom_TFAE (algebraMap R S)).out 1 3 rfl rfl).mp ‹_›
  let : Algebra (ResidueField R) (S ⧸ mR) := (inferInstanceAs <| Algebra (R ⧸ _) _)
  have : IsScalarTower R (ResidueField R) (S ⧸ mR) := (inferInstanceAs <| IsScalarTower R (R ⧸ _) _)
  have : FormallyUnramified (ResidueField R) (S ⧸ mR) := .of_restrictScalars R _ _
  have : EssFiniteType (ResidueField R) (S ⧸ mR) := .of_comp R _ _
  have : Module.Finite (ResidueField R) (S ⧸ mR) := FormallyUnramified.finite_of_free _ _
  have : IsReduced (S ⧸ mR) := FormallyUnramified.isReduced_of_field (ResidueField R) (S ⧸ mR)
  have : IsArtinianRing (S ⧸ mR) := isArtinian_of_tower (ResidueField R) inferInstance
  have : Nontrivial (S ⧸ mR) :=
    Ideal.Quotient.nontrivial_iff.mpr <| ne_top_of_le_ne_top (maximalIdeal.isMaximal S).ne_top hmR
  have : IsLocalRing (S ⧸ mR) := .of_surjective' _ Ideal.Quotient.mk_surjective
  have : maximalIdeal (S ⧸ mR) = ⊥ := by
    rw [← jacobson_eq_maximalIdeal _ bot_ne_top, IsArtinianRing.jacobson_eq_radical,
      ← Ideal.zero_eq_bot, ← nilradical, nilradical_eq_zero]
  rwa [← isField_iff_maximalIdeal_eq] at this

@[stacks 00UW "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variantaa49bf0583f6fa47c749744ac4111fbeedb0cf963a04a9f8712a25cae5f452c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variantaa49bf0583f6fa47c749744ac4111fbeedb0cf963a04a9f8712a25cae5f452c8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ed6e4b2b0de24026c038dc3bc9423a149e5024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
