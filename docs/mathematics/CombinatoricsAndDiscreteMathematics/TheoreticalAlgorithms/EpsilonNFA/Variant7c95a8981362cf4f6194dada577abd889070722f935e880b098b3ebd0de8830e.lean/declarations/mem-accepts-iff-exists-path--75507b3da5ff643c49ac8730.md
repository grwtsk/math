# mem_accepts_iff_exists_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95a1f0eec660288cb8962eaab6391c789c29ee50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32a667e2-03ff-ddee-5df0-bc72c274b7ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fb1c2ca-901c-68b5-e124-a0a21e9b64bc",
  "kind": "theorem",
  "lexical_name": "mem_accepts_iff_exists_path",
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
  "slug": "mem-accepts-iff-exists-path--75507b3da5ff643c49ac8730",
  "source": {
    "blob": "95a1f0eec660288cb8962eaab6391c789c29ee50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75507b3da5ff643c49ac8730ee235af9a8c42520cc3a1849168d6010301dc915",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb1c2ca-901c-68b5-e124-a0a21e9b64bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_accepts_iff_exists_path {x : List α} :
    x ∈ M.accepts ↔
      ∃ s₁ s₂ x', s₁ ∈ M.start ∧ s₂ ∈ M.accept ∧ x'.reduceOption = x ∧ M.IsPath s₁ s₂ x' where
  mp := by
    intro ⟨s₂, _, h⟩
    rw [eval, mem_evalFrom_iff_exists] at h
    obtain ⟨s₁, _, h⟩ := h
    rw [mem_evalFrom_iff_exists_path] at h
    tauto
  mpr := by
    intro ⟨s₁, s₂, x', hs₁, hs₂, h⟩
    have := M.mem_evalFrom_iff_exists.mpr ⟨_, hs₁, M.mem_evalFrom_iff_exists_path.mpr ⟨_, h⟩⟩
    exact ⟨s₂, hs₂, this⟩

/-! ### Conversions between `εNFA` and `NFA` -/


/-- `M.toNFA` is an `NFA` constructed from an `εNFA` `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a1f0eec660288cb8962eaab6391c789c29ee50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
