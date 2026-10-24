# exists_normalized_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287f6c81-abdf-c5dc-d1bc-fa4a3bba4ac5",
  "kind": "theorem",
  "lexical_name": "exists_normalized_log",
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
  "slug": "exists-normalized-log--40e40cea30084602dd057aaf",
  "source": {
    "blob": "aaf1fb8d46341790cb57331e575174e918657c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 29,
    "path": "GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e40cea30084602dd057aaf3cfc207ec95f609d53d83fd745950bc10f109291",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287f6c81-abdf-c5dc-d1bc-fa4a3bba4ac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized_log (g : ℂ → ℂ) (r : ℝ) (hr : 0 < r)
    (hg : DifferentiableOn ℂ g (ball 0 r))
    (hn : ∀ z ∈ ball 0 r, g z ≠ 0) :
    ∃ L : ℂ → ℂ, L 0 = 0 ∧
      (∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 r, g z = g 0 * Complex.exp (L z)) := by
  have hd : DifferentiableOn ℂ (logDeriv g) (ball 0 r) := by
    change DifferentiableOn ℂ (fun z => deriv g z / g z) (ball 0 r)
    exact (hg.deriv isOpen_ball).div hg hn
  obtain ⟨L, h0, hL⟩ := hd.isExactOn_ball.with_val_at 0 (0 : ℂ)
  have hLd : DifferentiableOn ℂ L (ball 0 r) :=
    fun z hz => (hL z hz).differentiableAt.differentiableWithinAt
  have he : DifferentiableOn ℂ (fun z => Complex.exp (L z)) (ball 0 r) :=
    fun z hz => ((hL z hz).differentiableAt.cexp).differentiableWithinAt
  have heq : EqOn (logDeriv g) (logDeriv (fun z => Complex.exp (L z))) (ball 0 r) := by
    intro z hz
    rw [logDeriv_exp L z (hL z hz).differentiableAt, (hL z hz).deriv]
  obtain ⟨C, _hC, hCeq⟩ :=
    (logDeriv_eqOn_iff hg he isOpen_ball (convex_ball (0 : ℂ) r).isPreconnected
      (fun z _ => Complex.exp_ne_zero (L z)) hn).mp heq
  have hC0 : g 0 = C := by
    simpa only [Pi.smul_apply, smul_eq_mul, h0, Complex.exp_zero, mul_one]
      using hCeq (mem_ball_self hr)
  refine ⟨L, h0, hL, ?_⟩
  intro z hz
  simpa only [Pi.smul_apply, smul_eq_mul, ← hC0] using hCeq hz

/-- The derivative conclusion supplies differentiability on the whole open disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf1fb8d46341790cb57331e575174e918657c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
