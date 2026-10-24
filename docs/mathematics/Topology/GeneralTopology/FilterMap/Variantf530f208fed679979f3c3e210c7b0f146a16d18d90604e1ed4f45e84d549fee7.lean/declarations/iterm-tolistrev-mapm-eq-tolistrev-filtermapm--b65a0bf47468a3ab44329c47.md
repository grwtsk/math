# IterM.toListRev_mapM_eq_toListRev_filterMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae68d6dd2cae548b2e206426cc02fa7947c9c3e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 754,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67e8f08d-35fb-6d4a-1f45-40e50e04b73f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14188f5e-57f1-809b-d2b8-412c49ef7298",
  "kind": "theorem",
  "lexical_name": "IterM.toListRev_mapM_eq_toListRev_filterMapM",
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
  "slug": "iterm-tolistrev-mapm-eq-tolistrev-filtermapm--b65a0bf47468a3ab44329c47",
  "source": {
    "blob": "ae68d6dd2cae548b2e206426cc02fa7947c9c3e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 754,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b65a0bf47468a3ab44329c477fadc4a085cce6a90f96f879fba5b28c4d5838fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14188f5e-57f1-809b-d2b8-412c49ef7298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.toListRev_mapM_eq_toListRev_filterMapM {α β γ : Type w}
    {m : Type w → Type w'} {n : Type w → Type w''}
    [Monad m] [LawfulMonad m] [Monad n] [MonadAttach n] [LawfulMonad n] [WeaklyLawfulMonadAttach n]
    [MonadLiftT m n][LawfulMonadLiftT m n]
    [Iterator α m β] [Finite α m]
    {f : β → n γ} {it : IterM (α := α) m β} :
    (it.mapM f).toListRev =
      (it.filterMapM fun b => some <$> f b).toListRev := by
  simp [toListRev_eq, toList_mapM_eq_toList_filterMapM]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variantf530f208fed679979f3c3e210c7b0f146a16d18d90604e1ed4f45e84d549fee7.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae68d6dd2cae548b2e206426cc02fa7947c9c3e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
