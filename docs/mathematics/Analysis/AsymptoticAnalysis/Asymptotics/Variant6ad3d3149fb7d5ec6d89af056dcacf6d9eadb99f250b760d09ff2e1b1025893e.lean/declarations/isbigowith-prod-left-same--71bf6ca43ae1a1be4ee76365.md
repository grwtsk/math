# IsBigOWith.prod_left_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29ad5a731a812eae7e27d0632faec007f1cb28cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1016,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ad3d3149fb7d5ec6d89af056dcacf6d9eadb99f250b760d09ff2e1b1025893e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeb30f62-4452-c151-e26d-4e8de861cdf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19abb72e-d894-4afb-adeb-043c1814e2ba",
  "kind": "theorem",
  "lexical_name": "IsBigOWith.prod_left_same",
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
  "slug": "isbigowith-prod-left-same--71bf6ca43ae1a1be4ee76365",
  "source": {
    "blob": "29ad5a731a812eae7e27d0632faec007f1cb28cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1020,
    "line": 1016,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant6ad3d3149fb7d5ec6d89af056dcacf6d9eadb99f250b760d09ff2e1b1025893e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71bf6ca43ae1a1be4ee76365524f9f8e2f9723e258a02d0e3634eb84964a5212",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant6ad3d3149fb7d5ec6d89af056dcacf6d9eadb99f250b760d09ff2e1b1025893e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19abb72e-d894-4afb-adeb-043c1814e2ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1020.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigOWith.prod_left_same (hf : IsBigOWith c l f' k') (hg : IsBigOWith c l g' k') :
    IsBigOWith c l (fun x => (f' x, g' x)) k' := by
  rw [isBigOWith_iff] at *; filter_upwards [hf, hg]with x using max_le
#align asymptotics.is_O_with.prod_left_same Asymptotics.IsBigOWith.prod_left_same

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant6ad3d3149fb7d5ec6d89af056dcacf6d9eadb99f250b760d09ff2e1b1025893e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant6ad3d3149fb7d5ec6d89af056dcacf6d9eadb99f250b760d09ff2e1b1025893e.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ad5a731a812eae7e27d0632faec007f1cb28cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
