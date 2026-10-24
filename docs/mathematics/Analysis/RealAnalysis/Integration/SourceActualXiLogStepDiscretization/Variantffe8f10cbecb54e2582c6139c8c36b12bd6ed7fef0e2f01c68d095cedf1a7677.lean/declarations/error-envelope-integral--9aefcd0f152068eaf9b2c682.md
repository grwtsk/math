# error_envelope_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e5b711b-cc4f-9205-6198-eb0dc455413c",
  "kind": "theorem",
  "lexical_name": "error_envelope_integral",
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
  "slug": "error-envelope-integral--9aefcd0f152068eaf9b2c682",
  "source": {
    "blob": "7bb95b35b5e64a482add532c7a537cd28e88348a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aefcd0f152068eaf9b2c6821441442cab811c7396c242ae54776bbaaa88d83d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e5b711b-cc4f-9205-6198-eb0dc455413c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_envelope_integral {T : ℝ} :
    (∫ t in Real.log 7..T, Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) =
      2 * Real.sqrt 2 * actualXiCellOscillationConstant *
        (Real.exp (-Real.log 7 / 2) - Real.exp (-T / 2)) := by
  have hd (t : ℝ) : HasDerivAt
      (fun x => -2 * Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-x / 2))
      (Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-t / 2)) t := by
    have hl : HasDerivAt (fun x : ℝ => -x / 2) (-1 / 2) t := by
      simpa only [Pi.neg_apply, id_eq] using (hasDerivAt_id t).neg.div_const (2 : ℝ)
    convert hl.exp.const_mul (-2 * Real.sqrt 2 * actualXiCellOscillationConstant)
      using 1 <;> (try rfl) <;> ring
  have hc : Continuous (fun t : ℝ => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) := by fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable _ _)]
  ring

/-- Uniform finite discretization cost for every real terminal time, with no omitted cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb95b35b5e64a482add532c7a537cd28e88348a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
