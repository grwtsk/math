# supported_prefix_add_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdf072cffe2ba0b775141e4d1dad92b5db8fae8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/443be26d97ac340d66b0e73d1d838e277433c305777193f1d184bdce3c1eee03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bf5b672-2854-7c92-3990-c57a89e3ad53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02764bae-f12d-40fd-f130-3cdd75489e25",
  "kind": "theorem",
  "lexical_name": "supported_prefix_add_tail",
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
  "slug": "supported-prefix-add-tail--1bf741eee5e6d3af42bd7bf6",
  "source": {
    "blob": "fdf072cffe2ba0b775141e4d1dad92b5db8fae8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant443be26d97ac340d66b0e73d1d838e277433c305777193f1d184bdce3c1eee03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf741eee5e6d3af42bd7bf6194ed3e605b276d59f562aba3558cfdd22d2d0f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant443be26d97ac340d66b0e73d1d838e277433c305777193f1d184bdce3c1eee03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02764bae-f12d-40fd-f130-3cdd75489e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem supported_prefix_add_tail (U N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 U, f n) + (∑ n ∈ Finset.Ioc U N, f n) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  let L := max U N
  have hUL : U ≤ L := le_max_left U N
  have hNL : N ≤ L := le_max_right U N
  have hp : (∑ n ∈ Finset.Icc 1 L, f n) = ∑ n ∈ Finset.Icc 1 N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
          (Finset.mem_Icc.mp hn).2.trans hNL⟩)
    intro n hn hnot
    exact hf n (by
      by_contra h
      apply hnot
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, by omega⟩)
  have ht : (∑ n ∈ Finset.Ioc U L, f n) = ∑ n ∈ Finset.Ioc U N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
          (Finset.mem_Ioc.mp hn).2.trans hNL⟩)
    intro n hn hnot
    exact hf n (by
      by_contra h
      apply hnot
      exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1, by omega⟩)
  have hs : Finset.Icc 1 L = Finset.Icc 1 U ∪ Finset.Ioc U L := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Icc 1 U) (Finset.Ioc U L) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    have hl := (Finset.mem_Icc.mp hn).2
    have hu := (Finset.mem_Ioc.mp hn').1
    omega
  calc
    _ = (∑ n ∈ Finset.Icc 1 U, f n) + (∑ n ∈ Finset.Ioc U L, f n) := by
      rw [ht]
    _ = ∑ n ∈ Finset.Icc 1 L, f n := by rw [hs, Finset.sum_union hj]
    _ = _ := hp

/-- Every positive auxiliary cutoff reconstructs the original residual at the fixed real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant443be26d97ac340d66b0e73d1d838e277433c305777193f1d184bdce3c1eee03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant443be26d97ac340d66b0e73d1d838e277433c305777193f1d184bdce3c1eee03.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf072cffe2ba0b775141e4d1dad92b5db8fae8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
