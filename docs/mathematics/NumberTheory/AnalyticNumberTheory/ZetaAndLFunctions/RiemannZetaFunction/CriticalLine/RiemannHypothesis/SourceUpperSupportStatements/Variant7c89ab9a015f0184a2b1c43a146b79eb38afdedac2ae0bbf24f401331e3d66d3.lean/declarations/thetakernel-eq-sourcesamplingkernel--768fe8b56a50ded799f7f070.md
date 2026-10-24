# thetaKernel_eq_sourceSamplingKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c97fedb1d7327d64c85815154f5cfa3fd323a4eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c056dbc-4211-4f60-a10d-9ce2ffed6547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9ad0679-4e8f-2694-8b70-1e7ab82084cd",
  "kind": "theorem",
  "lexical_name": "thetaKernel_eq_sourceSamplingKernel",
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
  "slug": "thetakernel-eq-sourcesamplingkernel--768fe8b56a50ded799f7f070",
  "source": {
    "blob": "c97fedb1d7327d64c85815154f5cfa3fd323a4eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:768fe8b56a50ded799f7f0704eb273f01731e21d8ba5e681d4bb9466a78bed41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ad0679-4e8f-2694-8b70-1e7ab82084cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaKernel_eq_sourceSamplingKernel (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  rw [ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A q hq]
  have hB : 1 ≤ ⌊Real.exp (2*A)⌋₊ := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).mpr
    norm_cast
    exact Real.one_le_exp_iff.mpr (by linarith)
  rw [sum_eq_single 1]
  · simp only [Nat.mul_one]
  · intro k hk hk1
    have hk2 : 2 ≤ k := by have h := (mem_Icc.mp hk).1; omega
    have hprod : 0 < ((q*k:ℕ):ℝ) := by exact_mod_cast Nat.mul_pos hq (by omega : 0<k)
    apply sourceSamplingKernel_zero_of_two_mul_ge A _ hprod
    have hmul : 2*q ≤ q*k := by nlinarith
    have hc : (2:ℝ)*(q:ℝ) ≤ (q*k:ℕ) := by exact_mod_cast hmul
    linarith
  · intro hnot
    exact False.elim (hnot (mem_Icc.mpr ⟨by omega, hB⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c97fedb1d7327d64c85815154f5cfa3fd323a4eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
