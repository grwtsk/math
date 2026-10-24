# thetaKernel_eq_sourceSamplingKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf8ce11-c019-e7da-36b4-ad14138b9dfe",
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
  "slug": "thetakernel-eq-sourcesamplingkernel--736ae65d13e02f20605f7ddf",
  "source": {
    "blob": "31522b219c53e41442f602f32785da1a175f8110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Variant827b852bd06713daf11f1f704807ebf24b7712b8982208483c920e8355bae3ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736ae65d13e02f20605f7ddf11fcdfaf117cdad8be9dd7a54a2853d7121bacdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Variant827b852bd06713daf11f1f704807ebf24b7712b8982208483c920e8355bae3ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf8ce11-c019-e7da-36b4-ad14138b9dfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Variant827b852bd06713daf11f1f704807ebf24b7712b8982208483c920e8355bae3ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Variant827b852bd06713daf11f1f704807ebf24b7712b8982208483c920e8355bae3ad.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31522b219c53e41442f602f32785da1a175f8110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
