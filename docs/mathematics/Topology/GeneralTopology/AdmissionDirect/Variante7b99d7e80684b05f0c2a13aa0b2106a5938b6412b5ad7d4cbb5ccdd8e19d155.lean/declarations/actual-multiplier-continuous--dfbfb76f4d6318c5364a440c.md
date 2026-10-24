# actual_multiplier_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ee3446e-3931-8d53-36be-199572b773ef",
  "kind": "theorem",
  "lexical_name": "actual_multiplier_continuous",
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
  "slug": "actual-multiplier-continuous--dfbfb76f4d6318c5364a440c",
  "source": {
    "blob": "bcdd52c6b2a8af22138299665982680a98161cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfbfb76f4d6318c5364a440c7593d66422148be061e4cd0ecd8f7a03dbac86b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ee3446e-3931-8d53-36be-199572b773ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_multiplier_continuous : Continuous archimedeanMultiplier := by
  have ho : IsOpen {z : ℂ | 0 < z.re} :=
    Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have hn (z : ℂ) (hz : 0 < z.re) : ∀ m : ℕ, z ≠ -m := by
    intro m hm
    have he := congrArg Complex.re hm
    simp only [Complex.neg_re, Complex.natCast_re] at he
    have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hg : AnalyticOnNhd ℂ Complex.Gamma {z : ℂ | 0 < z.re} := by
    apply DifferentiableOn.analyticOnNhd _ ho
    intro z hz
    exact (Complex.differentiableAt_Gamma z (hn z hz)).differentiableWithinAt
  apply continuous_iff_continuousAt.mpr
  intro ξ
  have hz : 0 < ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2).re := by simp
  have hc := ((hg _ hz).deriv.div (hg _ hz) (Complex.Gamma_ne_zero (hn _ hz))).continuousAt
  have hp : Continuous (fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := by fun_prop
  have hd : ContinuousAt Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := hc
  change ContinuousAt (fun ξ : ℝ ↦
    (Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)).re - Real.log Real.pi) ξ
  have hdcomp : ContinuousAt
      (fun ξ : ℝ ↦ Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)) ξ :=
    hd.comp (f := fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) hp.continuousAt
  exact (Complex.continuous_re.continuousAt.comp hdcomp).sub continuousAt_const


/-- A weaker global majorant target than the source's exact constant-four estimate.
This is an open proposition, not an admitted theorem or replacement multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variante7b99d7e80684b05f0c2a13aa0b2106a5938b6412b5ad7d4cbb5ccdd8e19d155.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcdd52c6b2a8af22138299665982680a98161cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
