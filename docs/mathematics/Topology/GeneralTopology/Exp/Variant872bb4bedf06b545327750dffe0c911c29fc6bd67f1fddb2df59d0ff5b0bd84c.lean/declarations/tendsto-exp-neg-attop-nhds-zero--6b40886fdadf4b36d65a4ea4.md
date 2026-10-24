# tendsto_exp_neg_atTop_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86f6c1ff-de07-0e71-efb8-ef2f60e1865b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28c1a94f-d0ac-31ef-760d-e32d80173a03",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_neg_atTop_nhds_zero",
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
  "slug": "tendsto-exp-neg-attop-nhds-zero--6b40886fdadf4b36d65a4ea4",
  "source": {
    "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b40886fdadf4b36d65a4ea4583afe8c01237230e51b3dc8eda6221989579f29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c1a94f-d0ac-31ef-760d-e32d80173a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_neg_atTop_nhds_zero : Tendsto (fun x => exp (-x)) atTop (𝓝 0) :=
  (tendsto_inv_atTop_zero.comp tendsto_exp_atTop).congr fun x => (exp_neg x).symm

/-- The real exponential function tends to `1` at `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97aa22cce9a0173e19aa13b00bb213f5a48ebef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
