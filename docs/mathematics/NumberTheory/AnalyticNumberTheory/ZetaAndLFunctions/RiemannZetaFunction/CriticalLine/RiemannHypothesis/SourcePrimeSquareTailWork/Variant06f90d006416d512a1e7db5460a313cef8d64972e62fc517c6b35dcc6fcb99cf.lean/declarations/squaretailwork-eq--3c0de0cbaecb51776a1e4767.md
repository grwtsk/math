# squareTailWork_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "249e5b021001fb28d46133fde900f992b8d8a3af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdea25df-8098-3c46-21e2-f9aa2426f479",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c896214-5ed7-242e-3452-360049879ace",
  "kind": "theorem",
  "lexical_name": "squareTailWork_eq",
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
  "slug": "squaretailwork-eq--3c0de0cbaecb51776a1e4767",
  "source": {
    "blob": "249e5b021001fb28d46133fde900f992b8d8a3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c0de0cbaecb51776a1e4767fd995393612a17a237371571a0f2fc361f8c0734",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c896214-5ed7-242e-3452-360049879ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTailWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareTailWork A = primeSquareMoment A - squarePrefixBaseline := by
  have hp : 0 < A := by linarith
  have hd := (criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2*A)
  rw [squareTailWork]
  simp_rw [squareTail, sub_mul]
  rw [intervalIntegral.integral_sub (hd.const_mul squarePrefixBaseline)
    (squarePrefix_mul_deriv_intervalIntegrable 0 (2*A) (by linarith)
      (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_deriv_eq_sub
      (fun u _ => (criticalPrimeTest_contDiff A hp).differentiable (by norm_num) u) hd,
    criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA,
    squarePrefix_source_work hp]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249e5b021001fb28d46133fde900f992b8d8a3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
