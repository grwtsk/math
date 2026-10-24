# inducedTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14955a1ee0831b76d76f5076530cd3c9eda7f1eaa7260e80d11bbdb8316822a3",
  "kind": "def",
  "lexical_name": "inducedTopology",
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
  "slug": "inducedtopology--583f39a27f4bb847b03fa4e4",
  "source": {
    "blob": "28534b95a6405580874186bc8120a92520d409a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:583f39a27f4bb847b03fa4e455030d4a4359b5a15e0318731722d78793b749cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14955a1ee0831b76d76f5076530cd3c9eda7f1eaa7260e80d11bbdb8316822a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inducedTopology : GrothendieckTopology C where
  sieves _ S := K _ (S.functorPushforward G)
  top_mem' X := by
    change K _ _
    rw [Sieve.functorPushforward_top]
    exact K.top_mem _
  pullback_stable' X Y S iYX hS := by
    apply K.transitive (LocallyCoverDense.functorPushforward_functorPullback_mem
      ⟨_, K.pullback_stable (G.map iYX) hS⟩)
    rintro Z _ ⟨U, iUY, iZU, ⟨W, iWX, iUW, hiWX, e₁⟩, rfl⟩
    rw [Sieve.pullback_comp]
    apply K.pullback_stable
    clear iZU Z
    apply K.transitive (G.functorPushforward_imageSieve_mem _ iUW)
    rintro Z _ ⟨U₁, iU₁U, iZU₁, ⟨iU₁W, e₂⟩, rfl⟩
    rw [Sieve.pullback_comp]
    apply K.pullback_stable
    clear iZU₁ Z
    apply K.superset_covering ?_ (G.functorPushforward_equalizer_mem _
      (iU₁U ≫ iUY ≫ iYX) (iU₁W ≫ iWX) (by simp [e₁, e₂]))
    rintro Z _ ⟨U₂, iU₂U₁, iZU₂, e₃ : _ = _, rfl⟩
    refine ⟨_, iU₂U₁ ≫ iU₁U ≫ iUY, iZU₂, ?_, by simp⟩
    simpa [e₃] using S.downward_closed hiWX (iU₂U₁ ≫ iU₁W)
  transitive' X S hS S' H' := by
    apply K.transitive hS
    rintro Y _ ⟨Z, g, i, hg, rfl⟩
    rw [Sieve.pullback_comp]
    apply K.pullback_stable i
    refine K.superset_covering ?_ (H' hg)
    rintro W _ ⟨Z', g', i', hg, rfl⟩
    refine ⟨Z', g' ≫ g , i', hg, ?_⟩
    simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28534b95a6405580874186bc8120a92520d409a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
