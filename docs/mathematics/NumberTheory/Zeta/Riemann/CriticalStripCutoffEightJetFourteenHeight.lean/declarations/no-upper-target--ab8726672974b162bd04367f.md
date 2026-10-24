# no_upper_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2421c72-916b-14de-9544-3dd04c81b2a5",
  "kind": "lemma",
  "lexical_name": "no_upper_target",
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
  "slug": "no-upper-target--ab8726672974b162bd04367f",
  "source": {
    "blob": "fd585412f3ec903fa2d0502ce529096d625221b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8726672974b162bd04367feb80eddaa779764f7502aa136f46ae87eb1d26e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2421c72-916b-14de-9544-3dd04c81b2a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma no_upper_target {s : ℂ} (hs : NontrivialZetaZero s)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) : False := by
  by_cases hx : (1/2 : ℝ) ≤ s.re
  · exact poleNormalized_nonzero_fourteenUpperBand hx hs.mem_critical_strip.2.le ht ht1
      (poleNormalizedZeta_zero_of_target hs)
  · have hm := hs.critical_reflection
    have hre : (1/2 : ℝ) ≤ (criticalReflection s).re := by
      simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
      linarith [lt_of_not_ge hx]
    have hti : (criticalReflection s).im=s.im := by simp [criticalReflection]
    exact poleNormalized_nonzero_fourteenUpperBand hre hm.mem_critical_strip.2.le
      (hti.symm ▸ ht) (hti.symm ▸ ht1) (poleNormalizedZeta_zero_of_target hm)

/-- A bounded no-zero seed, not a claim that all higher shells are zero-free. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd585412f3ec903fa2d0502ce529096d625221b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
