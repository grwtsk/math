# endpointValue_closed_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987add6b-012f-af3e-a2cd-f8773848f847",
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
  "slug": "endpointvalue-closed-phase--b7b9d413f3497999b3606c71",
  "source": {
    "blob": "41457c3eaebec9781bbea8a033e74c8e4fcc2794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variante32e9c8ac50658f289d82886235b2625d1020da129724ebc58c2f935feccb7fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b9d413f3497999b3606c7173d3642c18ae35c2733d4d7d0944f34208fe8635",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variante32e9c8ac50658f289d82886235b2625d1020da129724ebc58c2f935feccb7fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987add6b-012f-af3e-a2cd-f8773848f847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variante32e9c8ac50658f289d82886235b2625d1020da129724ebc58c2f935feccb7fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variante32e9c8ac50658f289d82886235b2625d1020da129724ebc58c2f935feccb7fa.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41457c3eaebec9781bbea8a033e74c8e4fcc2794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
