# tendsto_iff_tendsto_subseq_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5edbce3f79ce364583912471e4dc6f315b8ddff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d86db6b6-52a4-0017-905b-12b310c9c70e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:314a682a-d3b3-f1d7-ea3e-5106659e21c6",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_tendsto_subseq_of_monotone",
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
  "slug": "tendsto-iff-tendsto-subseq-of-monotone--331d97b0bf3883a05b8e6823",
  "source": {
    "blob": "5edbce3f79ce364583912471e4dc6f315b8ddff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:331d97b0bf3883a05b8e682347d9b243b8c9dcb73959eb709fe3990e7266ec6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:314a682a-d3b3-f1d7-ea3e-5106659e21c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_tendsto_subseq_of_monotone {ι₁ ι₂ α : Type*} [SemilatticeSup ι₁] [Preorder ι₂]
    [Nonempty ι₁] [TopologicalSpace α] [ConditionallyCompleteLinearOrder α] [OrderTopology α]
    [NoMaxOrder α] {f : ι₂ → α} {φ : ι₁ → ι₂} {l : α} (hf : Monotone f)
    (hg : Tendsto φ atTop atTop) : Tendsto f atTop (𝓝 l) ↔ Tendsto (f ∘ φ) atTop (𝓝 l) := by
  constructor <;> intro h
  · exact h.comp hg
  · rcases tendsto_of_monotone hf with (h' | ⟨l', hl'⟩)
    · exact (not_tendsto_atTop_of_tendsto_nhds h (h'.comp hg)).elim
    · rwa [tendsto_nhds_unique h (hl'.comp hg)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edbce3f79ce364583912471e4dc6f315b8ddff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
