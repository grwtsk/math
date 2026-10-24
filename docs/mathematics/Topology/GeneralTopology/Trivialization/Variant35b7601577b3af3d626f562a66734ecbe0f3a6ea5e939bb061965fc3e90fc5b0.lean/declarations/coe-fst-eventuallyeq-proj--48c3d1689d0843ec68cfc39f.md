# coe_fst_eventuallyEq_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3e09409-7cf8-166f-a377-d76ec33f5ce3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7910c30-9014-9f02-3b8e-4ff79d9f9cc3",
  "kind": "theorem",
  "lexical_name": "coe_fst_eventuallyEq_proj",
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
  "slug": "coe-fst-eventuallyeq-proj--48c3d1689d0843ec68cfc39f",
  "source": {
    "blob": "3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 432,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c3d1689d0843ec68cfc39fdf6ba918a018ef31c284cdd5188c1b667834d86e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7910c30-9014-9f02-3b8e-4ff79d9f9cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_fst_eventuallyEq_proj (ex : x ∈ e.source) : Prod.fst ∘ e =ᶠ[𝓝 x] proj :=
  mem_nhds_iff.2 ⟨e.source, fun _y hy => e.coe_fst hy, e.open_source, ex⟩
#align trivialization.coe_fst_eventually_eq_proj Trivialization.coe_fst_eventuallyEq_proj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
