# isCauSeq_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d6ac4cede463d1008a60dfc268c5a8309a312a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 751,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e5ee7ac-5df4-d696-6335-df401f919921",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c73c2be-e30f-0024-763f-c47c5ea14e45",
  "kind": "theorem",
  "lexical_name": "isCauSeq_im",
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
  "slug": "iscauseq-im--4d0fba30741e9fb7505aabd9",
  "source": {
    "blob": "4d6ac4cede463d1008a60dfc268c5a8309a312a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 755,
    "line": 751,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0fba30741e9fb7505aabd990b218e926220ccef77ee4a87b881e0d411d68c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c73c2be-e30f-0024-763f-c47c5ea14e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_im (f : CauSeq K norm) : IsCauSeq abs fun n => im (f n) := fun _ ε0 =>
  (f.cauchy ε0).imp fun i H j ij =>
    lt_of_le_of_lt (by simpa only [map_sub] using abs_im_le_norm (f j - f i)) (H _ ij)

/-- The real part of a K Cauchy sequence, as a real Cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6ac4cede463d1008a60dfc268c5a8309a312a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
