# Iter.fold_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95a91a218b4b311e3abaa5b8519403759c84e85a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 720,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3316206-86d3-ba43-11c2-ca5221b3d6dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7301e16-968e-7939-74ce-c288bc1bf8ab",
  "kind": "theorem",
  "lexical_name": "Iter.fold_map",
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
  "slug": "iter-fold-map--d473fd92688ea48182f7da6d",
  "source": {
    "blob": "95a91a218b4b311e3abaa5b8519403759c84e85a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 720,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d473fd92688ea48182f7da6d0da4ebdfe501bc048ba3350ee71cb2eef79ea98d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7301e16-968e-7939-74ce-c288bc1bf8ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.fold_map {α β γ δ : Type w}
    [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    {f : β → γ} {g : δ → γ → δ} {init : δ} {it : Iter (α := α) β} :
    (it.map f).fold (init := init) g =
      it.fold (init := init) (fun d b => g d (f b)) := by
  simp [fold_eq_foldM, foldM_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a91a218b4b311e3abaa5b8519403759c84e85a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
