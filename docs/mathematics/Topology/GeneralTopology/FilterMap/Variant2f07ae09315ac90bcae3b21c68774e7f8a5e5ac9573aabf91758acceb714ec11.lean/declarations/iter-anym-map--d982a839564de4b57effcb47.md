# Iter.anyM_map

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
      "line": 831,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e599077-5316-705c-e18a-4b72254d281e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e440c0aa-93e7-232b-a622-812f789433e4",
  "kind": "theorem",
  "lexical_name": "Iter.anyM_map",
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
  "slug": "iter-anym-map--d982a839564de4b57effcb47",
  "source": {
    "blob": "95a91a218b4b311e3abaa5b8519403759c84e85a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 831,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d982a839564de4b57effcb47cb2107f1d074a0ef452e593f46568be1530413b0",
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

Occurrence: `result:e440c0aa-93e7-232b-a622-812f789433e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.anyM_map {α β β' : Type w} {m : Type → Type w'}
    [Iterator α Id β] [Finite α Id] [Monad m] [IteratorLoop α Id m]
    [LawfulMonad m] [LawfulIteratorLoop α Id m]
    {it : Iter (α := α) β} {f : β → β'} {p : β' → m Bool} :
    (it.map f).anyM p = it.anyM (fun x => p (f x)) := by
  induction it using Iter.inductSteps with | step it ihy ihs
  rw [anyM_eq_match_step, anyM_eq_match_step, step_map]
  cases it.step using PlausibleIterStep.casesOn
  · simp [ihy ‹_›]
  · simp [ihs ‹_›]
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a91a218b4b311e3abaa5b8519403759c84e85a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
