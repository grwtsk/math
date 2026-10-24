# mem_splitCenterBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2b752de2f22691366552bed165fcc0f7939602e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7490c3b4-e4df-04cf-fbba-1651e638b438",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48d6ce9d-93c2-3ec5-ca6d-70bb96e5e8b2",
  "kind": "theorem",
  "lexical_name": "mem_splitCenterBox",
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
  "slug": "mem-splitcenterbox--779990576860376bba3f13d6",
  "source": {
    "blob": "f2b752de2f22691366552bed165fcc0f7939602e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779990576860376bba3f13d6f37c9fb3fbf13567568620165e5e80fb8c595111",
  "verification": {
    "reference": "docs/verification/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48d6ce9d-93c2-3ec5-ca6d-70bb96e5e8b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_splitCenterBox {s : Set ι} {y : ι → ℝ} :
    y ∈ I.splitCenterBox s ↔ y ∈ I ∧ ∀ i, (I.lower i + I.upper i) / 2 < y i ↔ i ∈ s := by
  simp only [splitCenterBox, mem_def, ← forall_and]
  refine' forall_congr' fun i ↦ _
  dsimp only [Set.piecewise]
  split_ifs with hs <;> simp only [hs, iff_true_iff, iff_false_iff, not_lt]
  exacts [⟨fun H ↦ ⟨⟨(left_lt_add_div_two.2 (I.lower_lt_upper i)).trans H.1, H.2⟩, H.1⟩,
      fun H ↦ ⟨H.2, H.1.2⟩⟩,
    ⟨fun H ↦ ⟨⟨H.1, H.2.trans (add_div_two_lt_right.2 (I.lower_lt_upper i)).le⟩, H.2⟩,
      fun H ↦ ⟨H.1.1, H.2⟩⟩]
#align box_integral.box.mem_split_center_box BoxIntegral.Box.mem_splitCenterBox

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b752de2f22691366552bed165fcc0f7939602e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
