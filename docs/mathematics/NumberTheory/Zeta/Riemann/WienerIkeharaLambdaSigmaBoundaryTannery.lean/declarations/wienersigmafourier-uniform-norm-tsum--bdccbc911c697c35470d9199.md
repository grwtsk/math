# wienerSigmaFourier_uniform_norm_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1026efa2-ca9a-bc56-c93f-a9f27d380bcc",
  "kind": "theorem",
  "lexical_name": "wienerSigmaFourier_uniform_norm_tsum",
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
  "slug": "wienersigmafourier-uniform-norm-tsum--bdccbc911c697c35470d9199",
  "source": {
    "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 289,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdccbc911c697c35470d9199e5afe000def5d6534b90192f85c664260dd64236",
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

Occurrence: `result:1026efa2-ca9a-bc56-c93f-a9f27d380bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigmaFourier_uniform_norm_tsum
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T sigma : ℝ, 1 ≤ T → 1 ≤ sigma →
        Summable
          (fun n : ℕ => ‖wienerSigmaFourierTerm g T sigma n‖) ∧
        (∑' n : ℕ, ‖wienerSigmaFourierTerm g T sigma n‖) ≤
          C * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) := by
  obtain ⟨C, hC, hdecay⟩ := wienerSigma_SchwartzFourier_decay g
  refine ⟨C, hC, ?_⟩
  intro T sigma hT hsigma
  obtain ⟨hkernel, hkernelBound⟩ :=
    wienerLambdaLogKernel_uniform_bound hT
  have hdom :
      Summable (fun n : ℕ => C * wienerLambdaLogKernel T n) := by
    simpa only [mul_comm] using hkernel.mul_const C
  have hterm (n : ℕ) :
      ‖wienerSigmaFourierTerm g T sigma n‖ ≤
        C * wienerLambdaLogKernel T n :=
    wienerSigmaFourierTerm_norm_le
      g T sigma hsigma C hC hdecay n
  have htermSum :
      Summable (fun n : ℕ => ‖wienerSigmaFourierTerm g T sigma n‖) := by
    apply hdom.of_norm_bounded
    intro n
    simpa only [norm_norm] using hterm n
  refine ⟨htermSum, ?_⟩
  calc
    (∑' n : ℕ, ‖wienerSigmaFourierTerm g T sigma n‖) ≤
        ∑' n : ℕ, C * wienerLambdaLogKernel T n :=
      htermSum.tsum_le_tsum hterm hdom
    _ = C * (∑' n : ℕ, wienerLambdaLogKernel T n) := by
      rw [tsum_mul_left]
    _ ≤ C * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
      mul_le_mul_of_nonneg_left hkernelBound hC

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
