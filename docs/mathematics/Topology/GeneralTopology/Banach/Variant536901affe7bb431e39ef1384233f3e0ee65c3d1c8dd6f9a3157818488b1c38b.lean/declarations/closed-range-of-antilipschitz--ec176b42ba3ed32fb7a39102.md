# closed_range_of_antilipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 614,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0281336-559c-915c-28a9-ce9ee49da003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e90edb5a-4387-bf3e-db00-fa06491fa7cf",
  "kind": "lemma",
  "lexical_name": "closed_range_of_antilipschitz",
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
  "slug": "closed-range-of-antilipschitz--ec176b42ba3ed32fb7a39102",
  "source": {
    "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 614,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec176b42ba3ed32fb7a39102075a1dfc5863ec0486746a8c768eb6bef6b9daee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90edb5a-4387-bf3e-db00-fa06491fa7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closed_range_of_antilipschitz {f : E →SL[σ] F} {c : ℝ≥0} (hf : AntilipschitzWith c f) :
    f.range.topologicalClosure = f.range :=
  SetLike.ext'_iff.mpr <| (hf.isClosed_range f.uniformContinuous).closure_eq

variable [CompleteSpace F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
