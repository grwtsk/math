# endpointValue_closed_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:514fc594-f0a8-530c-5ef7-83e3dad47f86",
  "kind": "theorem",
  "lexical_name": "endpointValue_closed_phase",
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
  "slug": "endpointvalue-closed-phase--b9b29ced18155b189932ef3c",
  "source": {
    "blob": "b203e708acc3c94ce062bc2d36fcbc85e604b659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b29ced18155b189932ef3c2893979ecb03f4e7f01dc8b088df617083ff6f01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:514fc594-f0a8-530c-5ef7-83e3dad47f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointValue_closed_phase (A : ℝ) (hA : 0 ≤ A) :
    Real.exp (2 * A) * endpointValue A =
      (⌊Real.exp (2 * A)⌋₊ : ℝ) * integerDiscrepancy ⌊Real.exp (2 * A)⌋₊ -
        (Real.exp (2 * A) - (⌊Real.exp (2 * A)⌋₊ : ℝ)) := by
  have hN : 1 ≤ ⌊Real.exp (2 * A)⌋₊ :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hN0 : (⌊Real.exp (2 * A)⌋₊ : ℝ) ≠ 0 := by
    exact_mod_cast (show ⌊Real.exp (2 * A)⌋₊ ≠ 0 by omega)
  have hx0 : Real.exp (2 * A) ≠ 0 := (Real.exp_pos _).ne'
  have hpref : chebyshevPrimePower (Real.exp (2 * A)) =
      chebyshevPrimePower (⌊Real.exp (2 * A)⌋₊ : ℕ) := by
    unfold chebyshevPrimePower
    rw [Nat.floor_natCast]
  rw [endpointValue, normalizedPsiError_eq_prefix, Real.exp_neg,
    integerDiscrepancy_eq_prefix hN, hpref]
  field_simp
  ring

/-- Compensation at the literal cutoff includes the exact fractional phase and initial unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b203e708acc3c94ce062bc2d36fcbc85e604b659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
