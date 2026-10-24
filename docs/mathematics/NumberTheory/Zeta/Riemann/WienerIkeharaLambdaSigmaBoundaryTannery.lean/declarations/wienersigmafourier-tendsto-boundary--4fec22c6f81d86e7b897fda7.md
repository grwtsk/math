# wienerSigmaFourier_tendsto_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0c2094c-1b68-be85-8606-4f4427e0a25f",
  "kind": "theorem",
  "lexical_name": "wienerSigmaFourier_tendsto_boundary",
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
  "slug": "wienersigmafourier-tendsto-boundary--4fec22c6f81d86e7b897fda7",
  "source": {
    "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 250,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fec22c6f81d86e7b897fda733fe4e62ef45001e2c1d3f39eb5e2b6a55ebc07b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0c2094c-1b68-be85-8606-4f4427e0a25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigmaFourier_tendsto_boundary
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∑' n : ℕ, wienerSigmaFourierTerm g T sigma n)
      (𝓝[>] (1 : ℝ))
      (𝓝 (∑' n : ℕ, wienerSigmaBoundaryFourierTerm g T n)) := by
  obtain ⟨C, hC, hdecay⟩ := wienerSigma_SchwartzFourier_decay g
  have hkernel : Summable (wienerLambdaLogKernel T) :=
    (wienerLambdaLogKernel_uniform_bound hT).1
  have hdom :
      Summable (fun n : ℕ => C * wienerLambdaLogKernel T n) := by
    simpa only [mul_comm] using hkernel.mul_const C
  have hlimit :
      Tendsto
        (fun sigma : ℝ =>
          ∑' n : ℕ, wienerSigmaFourierTerm g T sigma n)
        (𝓝[>] (1 : ℝ))
        (𝓝 (∑' n : ℕ, wienerSigmaFourierTerm g T 1 n)) := by
    apply tendsto_tsum_of_dominated_convergence hdom
    · intro n
      exact (wienerSigma_LSeriesTerm_tendsto_one n).mul_const
        ((𝓕 (g : ℝ → ℂ)) (wienerFubiniFrequency n T))
    · rw [eventually_nhdsWithin_iff]
      apply Eventually.of_forall
      intro sigma hsigma n
      exact wienerSigmaFourierTerm_norm_le
        g T sigma hsigma.le C hC hdecay n
  convert hlimit using 1
  congr 1
  apply tsum_congr
  intro n
  exact wienerSigmaTerm_one_eq_boundary g T n

/-- The quantitative domination is uniform in BOTH sigma>=1 and
T>=1. In particular the normed Fourier-weighted series is summable
and bounded independently of the arithmetic scale, while its test
constant C depends only on g. This supplies the real input needed
for the subsequent compact-to-Schwartz tail comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
