# relative_isStableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10b56bd2bb27b6c1116f6f3e7ba301c2cc0088f758e854b9bcc849222f9f4453",
  "kind": "instance",
  "lexical_name": "relative_isStableUnderComposition",
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
  "slug": "relative-isstableundercomposition--371ec269f7db4d417e6a6618",
  "source": {
    "blob": "cc4f6e3f318a62359e36fbfaecb6e48a2e54780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 403,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:371ec269f7db4d417e6a66188cfbfc4d918aa0b16228fcec6d94b29c17039138",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10b56bd2bb27b6c1116f6f3e7ba301c2cc0088f758e854b9bcc849222f9f4453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance relative_isStableUnderComposition [F.Faithful] [F.Full] [P.IsStableUnderComposition] :
    IsStableUnderComposition (P.relative F) where
  comp_mem {F G H} f g hf hg := by
    refine ⟨comp_mem _ _ _ hf.1 hg.1, fun Z X p fst snd h ↦ ?_⟩
    rw [← hg.1.lift_snd (fst ≫ f) snd (by simpa using h.w)]
    refine comp_mem _ _ _ (hf.property (hg.1.fst p) fst _
      (IsPullback.of_bot ?_ ?_ (hg.1.isPullback p))) (hg.property_snd p)
    · rw [← Functor.map_comp, lift_snd]
      exact h
    · symm
      apply hg.1.lift_fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4f6e3f318a62359e36fbfaecb6e48a2e54780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
