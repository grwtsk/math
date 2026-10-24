# rotation_even_forces_sine_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2531eabf-bb96-d815-60dc-d0b70f45c947",
  "kind": "theorem",
  "lexical_name": "rotation_even_forces_sine_zero",
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
  "slug": "rotation-even-forces-sine-zero--69f29cb5a997ffb8788796c9",
  "source": {
    "blob": "e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f29cb5a997ffb8788796c95a9ae79a20e380b7957dd5092defebada4077ab3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2531eabf-bb96-d815-60dc-d0b70f45c947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_even_forces_sine_zero {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ)
    (hrot : reflection (rotationMap c s q) = rotationMap c s q) : s = 0 := by
  have hr := reflection_rotation_reverse c s q
  rw [hq, hrot] at hr
  rw [rotationMap_apply, rotationMap_apply, Complex.ofReal_neg, neg_smul] at hr
  have hsvec : -((s : ℂ) • quarterTurn q) = (s : ℂ) • quarterTurn q :=
    (add_left_cancel hr).symm
  have hz : ((2 : ℂ) * (s : ℂ)) • quarterTurn q = 0 := by
    rw [mul_smul, two_smul]
    calc
      (s : ℂ) • quarterTurn q + (s : ℂ) • quarterTurn q =
          -((s : ℂ) • quarterTurn q) + (s : ℂ) • quarterTurn q := by rw [hsvec]
      _ = 0 := neg_add_cancel _
  have hJ : quarterTurn q ≠ 0 := by
    intro h
    apply hq0
    apply quarterTurn.injective
    simpa using h
  have hc := (smul_eq_zero.mp hz).resolve_right hJ
  have hs := (mul_eq_zero.mp hc).resolve_left (by norm_num : (2 : ℂ) ≠ 0)
  exact_mod_cast hs

/-- Zero sine is also sufficient for an even source to remain reflection-even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
