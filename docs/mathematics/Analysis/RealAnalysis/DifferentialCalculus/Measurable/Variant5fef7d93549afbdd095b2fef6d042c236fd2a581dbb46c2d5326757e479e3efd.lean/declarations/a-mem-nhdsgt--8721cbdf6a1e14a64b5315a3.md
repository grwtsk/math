# A_mem_nhdsGT

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
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5a79a0f-9faf-3ae7-762a-2ec4c6d31504",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dad751f7-8208-7cdd-c7c0-e6b2dda76e94",
  "kind": "theorem",
  "lexical_name": "A_mem_nhdsGT",
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
  "slug": "a-mem-nhdsgt--8721cbdf6a1e14a64b5315a3",
  "source": {
    "blob": "aaafc77d15100c831eb787d82e714d6878c8e73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 449,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8721cbdf6a1e14a64b5315a30aeade690ed27e0a34f8ca4c89f23965794a820f",
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

Occurrence: `result:dad751f7-8208-7cdd-c7c0-e6b2dda76e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A_mem_nhdsGT {L : F} {r ε x : ℝ} (hx : x ∈ A f L r ε) : A f L r ε ∈ 𝓝[>] x := by
  rcases hx with ⟨r', rr', hr'⟩
  obtain ⟨s, s_gt, s_lt⟩ : ∃ s : ℝ, r / 2 < s ∧ s < r' := exists_between rr'.1
  have : s ∈ Ioc (r / 2) r := ⟨s_gt, le_of_lt (s_lt.trans_le rr'.2)⟩
  filter_upwards [Ioo_mem_nhdsGT <| show x < x + r' - s by linarith] with x' hx'
  use s, this
  have A : Icc x' (x' + s) ⊆ Icc x (x + r') := by
    apply Icc_subset_Icc hx'.1.le
    linarith [hx'.2]
  intro y hy z hz
  exact hr' y (A hy) z (A hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variant5fef7d93549afbdd095b2fef6d042c236fd2a581dbb46c2d5326757e479e3efd.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaafc77d15100c831eb787d82e714d6878c8e73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
