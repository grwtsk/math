# B_mem_nhdsGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 461,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3082184c-927d-800a-c035-06081a427071",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2583c55c-c567-1aac-c522-59618c89aa6f",
  "kind": "theorem",
  "lexical_name": "B_mem_nhdsGT",
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
  "slug": "b-mem-nhdsgt--d55ce770e32dc1b34db8e7d9",
  "source": {
    "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 461,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55ce770e32dc1b34db8e7d91668eaa59037443932861b4f4644ab1b1bca69cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2583c55c-c567-1aac-c522-59618c89aa6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_mem_nhdsGT {K : Set F} {r s ε x : ℝ} (hx : x ∈ B f K r s ε) :
    B f K r s ε ∈ 𝓝[>] x := by
  obtain ⟨L, LK, hL₁, hL₂⟩ : ∃ L : F, L ∈ K ∧ x ∈ A f L r ε ∧ x ∈ A f L s ε := by
    simpa only [B, mem_iUnion, mem_inter_iff, exists_prop] using hx
  filter_upwards [A_mem_nhdsGT hL₁, A_mem_nhdsGT hL₂] with y hy₁ hy₂
  simp only [B, mem_iUnion, mem_inter_iff, exists_prop]
  exact ⟨L, LK, hy₁, hy₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaafc77d15100c831eb787d82e714d6878c8e73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
