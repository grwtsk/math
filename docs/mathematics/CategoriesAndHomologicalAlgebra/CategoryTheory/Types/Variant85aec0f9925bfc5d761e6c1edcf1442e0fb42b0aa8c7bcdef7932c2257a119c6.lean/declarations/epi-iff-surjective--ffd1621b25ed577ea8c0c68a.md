# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eb415f0fff66efffbc61438688c081075084fa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ede9ae4-c146-5aba-6deb-379ea5c1074f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63422493-8c0f-805b-03dd-07bf0460ff5e",
  "kind": "theorem",
  "lexical_name": "epi_iff_surjective",
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
  "slug": "epi-iff-surjective--ffd1621b25ed577ea8c0c68a",
  "source": {
    "blob": "7eb415f0fff66efffbc61438688c081075084fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd1621b25ed577ea8c0c68a3059b29b24c4d00ade68d3fa525821ade11d0d0d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63422493-8c0f-805b-03dd-07bf0460ff5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {X Y : Type u} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · rintro ⟨H⟩
    refine Function.surjective_of_right_cancellable_Prop fun g₁ g₂ hg => ?_
    rw [← Equiv.ulift.symm.injective.comp_left.eq_iff]
    apply H
    change ULift.up ∘ g₁ ∘ f = ULift.up ∘ g₂ ∘ f
    rw [hg]
  · exact fun H => ⟨fun g g' h => H.injective_comp_right h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eb415f0fff66efffbc61438688c081075084fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
