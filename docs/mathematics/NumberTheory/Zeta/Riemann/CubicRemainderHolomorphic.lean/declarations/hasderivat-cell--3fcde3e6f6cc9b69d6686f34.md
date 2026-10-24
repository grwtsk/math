# hasDerivAt_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1653662e-2da6-a460-14b6-64c7a1996aef",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_cell",
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
  "slug": "hasderivat-cell--3fcde3e6f6cc9b69d6686f34",
  "source": {
    "blob": "ec0df0b92390c6702c5abeab349bf88ba08a9516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fcde3e6f6cc9b69d6686f34e751c12e7cb57cbf6f98f0f80114f429491439ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1653662e-2da6-a460-14b6-64c7a1996aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_cell (q : ℝ) (hq : 1 ≤ q) (s₀ : ℂ) :
    HasDerivAt (fun s : ℂ => cellRemainder q (-s)) (cellLogMoment q s₀) s₀ := by
  let F : ℂ → ℝ → ℂ := fun s u => (third u : ℂ) * logPower (q + u) (-s - 3)
  let F' : ℂ → ℝ → ℂ := fun s u => F s u * (-(Real.log (q + u) : ℂ))
  let U : Set ℂ := {s | s₀.re - 1 < s.re}
  let B : ℝ := max 0 (-s₀.re - 2)
  have hB : 0 ≤ B := le_max_left _ _
  have hU : U ∈ 𝓝 s₀ :=
    (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by dsimp [U]; linarith)
  have hq0 : 0 < q := by linarith
  have hd (s : ℂ) (u : ℝ) : HasDerivAt (fun w : ℂ => F w u) (F' s u) s := by
    have he := ((((hasDerivAt_id s).neg).sub_const 3).mul_const
      (Real.log (q + u) : ℂ)).cexp
    have hh := he.const_mul (third u : ℂ)
    apply hh.congr_deriv
    dsimp [F, F', logPower]
    ring
  have hb : ∀ᵐ u ∂volume, u ∈ Ι (0 : ℝ) 1 → ∀ s ∈ U,
      ‖F' s u‖ ≤ (1 / 48 : ℝ) * Real.exp (B * Real.log (q + 1)) * Real.log (q + 1) := by
    exact Eventually.of_forall (fun u hu s hs => by
      have hu' : u ∈ Icc (0 : ℝ) 1 := by
        have hu'' : u ∈ Ioc (0 : ℝ) 1 := by simpa using hu
        exact ⟨hu''.1.le, hu''.2⟩
      have hs' : s₀.re - 1 < s.re := hs
      have hupper : -s.re - 3 ≤ B := by
        have hm : -s₀.re - 2 ≤ B := le_max_right _ _
        linarith
      exact norm_cell_log_density_le q B hq hB s hupper u hu')
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := F) (F' := F')
    (bound := fun _ => (1 / 48 : ℝ) * Real.exp (B * Real.log (q + 1)) * Real.log (q + 1)) hU
    (Eventually.of_forall (fun s => (cell_integrable q hq0 s).def'.aestronglyMeasurable))
    (cell_integrable q hq0 s₀) (cellLogMoment_integrable q hq0 s₀).def'.aestronglyMeasurable hb
    intervalIntegrable_const (Eventually.of_forall (fun u _ s _ => hd s u))
  exact h.2

/-- Each cell is entire; the complete sum will have a restricted proved domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0df0b92390c6702c5abeab349bf88ba08a9516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
