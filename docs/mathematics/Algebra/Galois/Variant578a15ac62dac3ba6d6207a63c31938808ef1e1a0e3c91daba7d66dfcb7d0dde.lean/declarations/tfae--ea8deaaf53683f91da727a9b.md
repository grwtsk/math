# tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b124a32-bc0e-e721-86e7-f1332ea253bb",
  "kind": "theorem",
  "lexical_name": "tfae",
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
  "slug": "tfae--ea8deaaf53683f91da727a9b",
  "source": {
    "blob": "84dfd4c47cd981412183ba77424574c428b62a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 440,
    "path": "GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8deaaf53683f91da727a9b05dbcce428197eca113914f9bc309e22c3cf708c",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b124a32-bc0e-e721-86e7-f1332ea253bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tfae [FiniteDimensional F E] :
    List.TFAE [IsGalois F E, IntermediateField.fixedField (⊤ : Subgroup (E ≃ₐ[F] E)) = ⊥,
      Fintype.card (E ≃ₐ[F] E) = finrank F E, ∃ p: F[X], p.Separable ∧ p.IsSplittingField F E] := by
  tfae_have 1 → 2
  · exact fun h => OrderIso.map_bot (@intermediateFieldEquivSubgroup F _ E _ _ _ h).symm
  tfae_have 1 → 3
  · intro; exact card_aut_eq_finrank F E
  tfae_have 1 → 4
  · intro; exact is_separable_splitting_field F E
  tfae_have 2 → 1
  · exact of_fixedField_eq_bot F E
  tfae_have 3 → 1
  · exact of_card_aut_eq_finrank F E
  tfae_have 4 → 1
  · rintro ⟨h, hp1, _⟩; exact of_separable_splitting_field hp1
  tfae_finish
#align is_galois.tfae IsGalois.tfae

end IsGalois

end GaloisEquivalentDefinitions

section normalClosure

variable (k K F : Type*) [Field k] [Field K] [Field F] [Algebra k K] [Algebra k F] [Algebra K F]
  [IsScalarTower k K F] [IsGalois k F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84dfd4c47cd981412183ba77424574c428b62a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
