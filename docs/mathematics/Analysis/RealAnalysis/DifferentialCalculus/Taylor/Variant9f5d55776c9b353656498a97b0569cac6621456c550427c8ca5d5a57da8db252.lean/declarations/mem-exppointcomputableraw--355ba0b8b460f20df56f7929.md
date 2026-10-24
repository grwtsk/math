# mem_expPointComputableRaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 973,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1c4e22f-c8ac-aca6-2453-19cea60a8733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0079106d-3f31-d8f4-019a-18b33f4e1ae2",
  "kind": "theorem",
  "lexical_name": "mem_expPointComputableRaw",
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
  "slug": "mem-exppointcomputableraw--355ba0b8b460f20df56f7929",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 973,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355ba0b8b460f20df56f7929b5ebaa2be9d3bb01af18d36291a1742d14d98558",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0079106d-3f31-d8f4-019a-18b33f4e1ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_expPointComputableRaw (q : ℚ) (n : ℕ) :
    Real.exp q ∈ expPointComputableRaw q n := by
  simp only [expPointComputableRaw]
  have hq_mem : (q : ℝ) ∈ singleton q := mem_singleton q
  -- Strategy: exp q = poly(q) + remainder, with both in their respective intervals
  have hpoly_mem : ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.exp 0 / i.factorial) * (q : ℝ) ^ i
      ∈ evalTaylorSeries (expTaylorCoeffs n) (singleton q) := by
    have hsum_eq : ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.exp 0 / i.factorial) * (q : ℝ) ^ i =
        ∑ i ∈ Finset.range (n + 1), (1 / i.factorial : ℝ) * (q : ℝ) ^ i := by
      apply Finset.sum_congr rfl; intro i _; rw [iteratedDeriv_exp_zero, one_div]
    rw [hsum_eq]; exact mem_evalTaylorSeries_exp hq_mem n
  have hrem_mem := exp_taylor_remainder_in_interval hq_mem n
  have heq : Real.exp q = (∑ i ∈ Finset.range (n + 1),
      (iteratedDeriv i Real.exp 0 / i.factorial) * (q : ℝ) ^ i) +
      (Real.exp q - ∑ i ∈ Finset.range (n + 1),
        (iteratedDeriv i Real.exp 0 / i.factorial) * (q : ℝ) ^ i) := by ring
  rw [heq]; exact mem_add hpoly_mem hrem_mem

/-- FTIA for single-point exp: Real.exp q ∈ expPointComputable q n -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
