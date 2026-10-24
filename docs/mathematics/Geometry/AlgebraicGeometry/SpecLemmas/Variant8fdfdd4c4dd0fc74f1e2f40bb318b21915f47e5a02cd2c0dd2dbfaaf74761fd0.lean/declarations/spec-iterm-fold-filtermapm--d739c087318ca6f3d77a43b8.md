# Spec.IterM.fold_filterMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61f79a6f-8ab7-9092-cf98-1b94ad6f950c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:928b7c8b-f024-0f2c-e611-aa39bc591eec",
  "kind": "theorem",
  "lexical_name": "Spec.IterM.fold_filterMapM",
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
  "slug": "spec-iterm-fold-filtermapm--d739c087318ca6f3d77a43b8",
  "source": {
    "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1754,
    "line": 1737,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d739c087318ca6f3d77a43b8ca5fc5f6599753a8217c3a79e811490c9c1e2310",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928b7c8b-f024-0f2c-e611-aa39bc591eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1737–1754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.IterM.fold_filterMapM {α β γ δ : Type w}
    {m : Type w → Type w'} {n : Type w → Type w''}
    {Pred : Type w} {EPred : Type w}
    [Iterator α m β] [Finite α m]
    [Monad m] [LawfulMonad m]
    [Monad n] [MonadAttach n] [WeaklyLawfulMonadAttach n] [Assertion Pred] [Assertion EPred] [WPMonad n Pred EPred]
    [IteratorLoop α m n] [LawfulIteratorLoop α m n]
    [MonadLiftT m n] [LawfulMonadLiftT m n]
    {f : β → n (Option γ)} {g : δ → γ → δ} {init : δ} {it : IterM (α := α) m β}
    {P : Pred} {Q : δ → Pred} {eQ : EPred}
    (h : Triple (it.foldM (init := init) (fun d b => do
          let some c ← f b | Pure.pure d
          return g d c)) P Q eQ) :
    Triple ((it.filterMapM f).fold (init := init) g) P Q eQ := by
  rwa [Std.IterM.fold_filterMapM]


@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean#L1737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
