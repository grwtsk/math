# cycle_observation_does_not_determine_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b69ddc4064e7ebcea351859ddcbffc60239dbb23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1558335d-77dc-9d44-0f43-92024c13fd5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4a6af32-296c-23c5-003f-260356cc0196",
  "kind": "theorem",
  "lexical_name": "cycle_observation_does_not_determine_group",
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
  "slug": "cycle-observation-does-not-determine-group--50bd08890f19d67716a5848f",
  "source": {
    "blob": "b69ddc4064e7ebcea351859ddcbffc60239dbb23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 99,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50bd08890f19d67716a5848f96fb7ddbcc8b574194738117a0334df400c08818",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4a6af32-296c-23c5-003f-260356cc0196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_observation_does_not_determine_group :
    ∃ H K : Subgroup (Perm (Fin 2)), H ≠ K ∧
      (1 : Perm (Fin 2)) ∈ H ∧ (1 : Perm (Fin 2)) ∈ K := by
  refine ⟨⊥, ⊤, bot_ne_top, Subgroup.one_mem _, Subgroup.one_mem _⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b69ddc4064e7ebcea351859ddcbffc60239dbb23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
