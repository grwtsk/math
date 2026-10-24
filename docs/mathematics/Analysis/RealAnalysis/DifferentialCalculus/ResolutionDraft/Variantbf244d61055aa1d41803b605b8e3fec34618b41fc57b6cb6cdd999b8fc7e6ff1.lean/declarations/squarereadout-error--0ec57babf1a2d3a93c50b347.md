# squareReadout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "011520280aa89bbd8bd8c6766268d8bbe5e5f0ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91451088-fcf4-6506-c57c-fdb26e5d8351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dae7dc47-a2ed-ce4a-2f3a-d83e467802e0",
  "kind": "theorem",
  "lexical_name": "squareReadout_error",
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
  "slug": "squarereadout-error--0ec57babf1a2d3a93c50b347",
  "source": {
    "blob": "011520280aa89bbd8bd8c6766268d8bbe5e5f0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ec57babf1a2d3a93c50b34700acc61c1a378c299b18e18355bf7fc3a2307cad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae7dc47-a2ed-ce4a-2f3a-d83e467802e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareReadout_error {A ε : ℝ} (_hA : 1 ≤ A) (_hε : 0 ≤ ε) (F : ℝ → ℝ)
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p)) -
      pairedSquareReadout A| ≤ ε*squarePrefix (2*A) := by
  unfold pairedSquareReadout squarePrefix
  rw [show 2*A/2=A by ring, ← Finset.sum_sub_distrib, Finset.mul_sum]
  calc
    _ ≤ ∑ p ∈ primeLogInventory A,
      |squarePrefixCoefficient p*F (2*Real.log p)-
        squarePrefixCoefficient p*pairedTailTest A (2*Real.log p)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p hp
      have hb := primeLogInventory_log_bounds A p hp
      have hn := (squarePrefixCoefficient_pos ⟨p, (Finset.mem_filter.mp hp).2⟩).le
      rw [← mul_sub, abs_mul, abs_of_nonneg hn]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left
        (herr (2*Real.log p) ⟨by linarith [hb.1], by linarith [hb.2]⟩) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011520280aa89bbd8bd8c6766268d8bbe5e5f0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
