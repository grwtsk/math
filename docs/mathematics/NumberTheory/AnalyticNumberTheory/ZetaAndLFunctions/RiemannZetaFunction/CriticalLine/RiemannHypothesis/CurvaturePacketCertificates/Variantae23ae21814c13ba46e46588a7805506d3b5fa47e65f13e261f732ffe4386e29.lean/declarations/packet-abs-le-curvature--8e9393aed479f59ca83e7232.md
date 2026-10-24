# packet_abs_le_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:797e932c-93aa-dd3a-9a1a-160a6a267fa2",
  "kind": "theorem",
  "lexical_name": "packet_abs_le_curvature",
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
  "slug": "packet-abs-le-curvature--8e9393aed479f59ca83e7232",
  "source": {
    "blob": "0a42a1526c0006be2b1269a7eeb14d10948e2a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e9393aed479f59ca83e7232e72bc93f2d3b6186f2afa88c6473934d01b9b5cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:797e932c-93aa-dd3a-9a1a-160a6a267fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packet_abs_le_curvature {a b M : ℝ} (ha : 0 < a) (hb : 0 < b)
    {Φ : ℝ → ℝ} (hΦ : ContDiff ℝ 2 Φ) (x : ℝ)
    (hbound : ∀ u ∈ Icc 0 (a + b), |deriv (deriv Φ) (u + (x - b))| ≤ M) :
    |packetValue Φ x a b| ≤ M * (a * b / 2) := by
  have ht : Continuous (fun u => criticalDirichletTent (a + b) u b) := by
    unfold criticalDirichletTent
    fun_prop
  have hi := intervalIntegral.norm_integral_le_of_norm_le
    (μ := volume)
    (f := fun u => criticalDirichletTent (a + b) u b *
      deriv (deriv Φ) (u + (x - b)))
    (g := fun u => M * criticalDirichletTent (a + b) u b)
    (show 0 ≤ a + b by linarith)
    (Filter.Eventually.of_forall (fun u hu => by
      have hn := criticalDirichletTent_nonneg (show 0 < a + b by linarith)
        (show u ∈ Icc 0 (a + b) from ⟨hu.1.le, hu.2⟩)
        (show b ∈ Icc 0 (a + b) by constructor <;> linarith)
      simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg hn]
      calc
        _ ≤ criticalDirichletTent (a + b) u b * M :=
          mul_le_mul_of_nonneg_left (hbound u ⟨hu.1.le, hu.2⟩) hn
        _ = _ := mul_comm _ _))
    ((ht.const_mul M).intervalIntegrable _ _)
  rw [intervalIntegral.integral_const_mul, packet_tent_mass ha hb] at hi
  simpa only [Real.norm_eq_abs, ← packet_green ha hb hΦ x] using hi

/-- The complete A-dependent exponential critical test is a valid packet test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variantae23ae21814c13ba46e46588a7805506d3b5fa47e65f13e261f732ffe4386e29.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a42a1526c0006be2b1269a7eeb14d10948e2a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
