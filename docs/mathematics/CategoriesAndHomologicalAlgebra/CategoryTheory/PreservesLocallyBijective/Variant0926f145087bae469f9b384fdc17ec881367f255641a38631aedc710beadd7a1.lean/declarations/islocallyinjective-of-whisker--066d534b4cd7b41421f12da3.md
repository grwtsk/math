# isLocallyInjective_of_whisker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1587677-44e0-b504-33f7-67fcb8cd2e82",
  "kind": "lemma",
  "lexical_name": "isLocallyInjective_of_whisker",
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
  "slug": "islocallyinjective-of-whisker--066d534b4cd7b41421f12da3",
  "source": {
    "blob": "627a53e24a25e98ec187dd887e4fb3ec08b2aae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:066d534b4cd7b41421f12da3e1eba6bd5bae493c4b87a5a56ab5b7f780451b13",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1587677-44e0-b504-33f7-67fcb8cd2e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyInjective_of_whisker (hH : CoverPreserving J K H)
    [H.IsCoverDense K] [IsLocallyInjective J (whiskerLeft H.op f)] : IsLocallyInjective K f where
  equalizerSieve_mem {X} a b h := by
    apply K.transitive (H.is_cover_of_isCoverDense K X.unop)
    intro Y g ⟨⟨Z, lift, map, fac⟩⟩
    rw [← fac, Sieve.pullback_comp]
    apply K.pullback_stable
    refine K.superset_covering (Sieve.functorPullback_pushforward_le H _) ?_
    refine K.superset_covering (Sieve.functorPushforward_monotone H _ ?_)
      (hH.cover_preserve <| equalizerSieve_mem J (whiskerLeft H.op f)
        (F.map map.op a) (F.map map.op b) ?_)
    · intro W q hq
      simpa using hq
    · simp only [comp_obj, op_obj, whiskerLeft_app, Opposite.op_unop]
      rw [NatTrans.naturality_apply, NatTrans.naturality_apply, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `627a53e24a25e98ec187dd887e4fb3ec08b2aae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
