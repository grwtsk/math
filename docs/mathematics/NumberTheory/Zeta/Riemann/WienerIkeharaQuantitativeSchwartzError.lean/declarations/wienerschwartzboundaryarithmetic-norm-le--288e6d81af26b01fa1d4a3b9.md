# wienerSchwartzBoundaryArithmetic_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cf7ef0c-9c31-c00b-2f4a-9321b1fcdb05",
  "kind": "theorem",
  "lexical_name": "wienerSchwartzBoundaryArithmetic_norm_le",
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
  "slug": "wienerschwartzboundaryarithmetic-norm-le--288e6d81af26b01fa1d4a3b9",
  "source": {
    "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288e6d81af26b01fa1d4a3b93f435d74e0b6569c5da5af96b2256f7153d8b7c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cf7ef0c-9c31-c00b-2f4a-9321b1fcdb05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSchwartzBoundaryArithmetic_norm_le
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryArithmetic g T‖ ≤
      wienerFourierSchwartzControl g *
        ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) := by
  let P : ℝ := wienerFourierSchwartzControl g
  have hP : 0 ≤ P :=
    wienerFourierSchwartzControl_nonnegative g
  obtain ⟨hK, hKB⟩ :=
    wienerLambdaLogKernel_uniform_bound hT
  have hEach (n : ℕ) :
      ‖wienerSigmaFourierTerm g T 1 n‖ ≤
        P * wienerLambdaLogKernel T n :=
    wienerSigmaFourierTerm_norm_le
      g T 1 (le_refl _) P hP
      (wienerFourierSchwartzControl_decay g) n
  have hMajor :
      Summable (fun n : ℕ => P * wienerLambdaLogKernel T n) :=
    hK.mul_left P
  have hNorm :
      Summable (fun n : ℕ =>
        ‖wienerSigmaFourierTerm g T 1 n‖) :=
    hMajor.of_norm_bounded
      (fun n => by simpa only [norm_norm] using hEach n)
  calc
    ‖wienerSchwartzBoundaryArithmetic g T‖ ≤
        ∑' n : ℕ, ‖wienerSigmaFourierTerm g T 1 n‖ :=
      norm_tsum_le_tsum_norm hNorm
    _ ≤ ∑' n : ℕ, P * wienerLambdaLogKernel T n :=
      hNorm.tsum_le_tsum hEach hMajor
    _ = P * (∑' n : ℕ, wienerLambdaLogKernel T n) :=
      hK.tsum_mul_left P
    _ ≤ P * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
      mul_le_mul_of_nonneg_left hKB hP

/-- Exact full-line Cauchy integral used to bound the pole tail.
It retains the u/(2*pi) rescaling of the original Wiener source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
