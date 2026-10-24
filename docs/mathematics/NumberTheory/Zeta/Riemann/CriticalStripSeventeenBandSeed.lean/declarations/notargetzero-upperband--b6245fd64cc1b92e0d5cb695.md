# noTargetZero_upperBand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab243920-4dcc-58a2-6ee6-6e967fcea1f1",
  "kind": "theorem",
  "lexical_name": "noTargetZero_upperBand",
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
  "slug": "notargetzero-upperband--b6245fd64cc1b92e0d5cb695",
  "source": {
    "blob": "843b8c553eae297aa122a750ad46c23183dcf2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6245fd64cc1b92e0d5cb6955869f8697795d8237bb9db2e3dfdc877f7aaac34",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab243920-4dcc-58a2-6ee6-6e967fcea1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noTargetZero_upperBand : NoTargetZero upperBand := by
  intro z hz hzero
  by_cases hx : (1/2 : ℝ) ≤ z.re
  · exact source_nonzero hx hzero.mem_critical_strip.2.le hz.1 hz.2
      (poleNormalizedZeta_zero_of_target hzero)
  · have hm := hzero.critical_reflection
    have hr : (1/2 : ℝ) ≤ (criticalReflection z).re := by
      simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
      have h := lt_of_not_ge hx
      linarith
    have hi : (criticalReflection z).im = z.im := by simp [criticalReflection]
    exact source_nonzero hr hm.mem_critical_strip.2.le
      (by simpa only [hi] using hz.1) (by simpa only [hi] using hz.2)
      (poleNormalizedZeta_zero_of_target hm)

/-- This signed band excludes no point below height16. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843b8c553eae297aa122a750ad46c23183dcf2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
