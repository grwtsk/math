# _root_.Cardinal.sSup_lt_of_lt_cof_ord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61f131f55787d63d860900145f5680c395d874da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5c4ad1c-4c4a-4374-2d81-b443a8487fef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75f8701c-ae97-1048-9d1d-eab315340500",
  "kind": "theorem",
  "lexical_name": "_root_.Cardinal.sSup_lt_of_lt_cof_ord",
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
  "slug": "root-cardinal-ssup-lt-of-lt-cof-ord--7a7faf4597835fcec80226d4",
  "source": {
    "blob": "61f131f55787d63d860900145f5680c395d874da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7faf4597835fcec80226d4923defd23989aab3563b3c5a3fed2bc23638c1d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75f8701c-ae97-1048-9d1d-eab315340500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Cardinal.sSup_lt_of_lt_cof_ord {s : Set Cardinal.{u}} {a : Cardinal.{u}}
    (ha : #s < (Cardinal.lift.{u + 1} a).ord.cof) (hs : ∀ i ∈ s, i < a) : sSup s < a := by
  rw [← ord_lt_ord, sSup_ord]
  apply Ordinal.sSup_lt_of_lt_cof
  · simpa [mk_image_eq ord_injective]
  · simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f131f55787d63d860900145f5680c395d874da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
