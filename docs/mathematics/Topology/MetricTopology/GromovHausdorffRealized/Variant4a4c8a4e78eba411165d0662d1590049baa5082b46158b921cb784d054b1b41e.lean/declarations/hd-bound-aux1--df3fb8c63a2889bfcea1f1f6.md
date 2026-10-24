# HD_bound_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a40d628f-c527-a8f3-77fd-d1d8e56c1cee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f821bc3-f1f7-0447-fc36-ee753337e463",
  "kind": "theorem",
  "lexical_name": "HD_bound_aux1",
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
  "slug": "hd-bound-aux1--df3fb8c63a2889bfcea1f1f6",
  "source": {
    "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 299,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3fb8c63a2889bfcea1f1f6464afb8a26fdb8006d616d13b6b4635cd4b8ad43",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f821bc3-f1f7-0447-fc36-ee753337e463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem HD_bound_aux1 (f : Cb X Y) (C : ℝ) :
    BddAbove (range fun x : X => ⨅ y, f (inl x, inr y) + C) := by
  rcases (Real.bounded_iff_bddBelow_bddAbove.1 f.bounded_range).2 with ⟨Cf, hCf⟩
  refine' ⟨Cf + C, forall_range_iff.2 fun x => _⟩
  calc
    ⨅ y, f (inl x, inr y) + C ≤ f (inl x, inr default) + C := ciInf_le (HD_below_aux1 C) default
    _ ≤ Cf + C := add_le_add ((fun x => hCf (mem_range_self x)) _) le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f554c13e90b90b506b2b80187f766c837c76fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
