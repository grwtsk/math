# logSample_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d56f930d-a7c4-6134-7bfa-54d4dcd304a8",
  "kind": "theorem",
  "lexical_name": "logSample_integrableOn",
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
  "slug": "logsample-integrableon--f778c9746a9ac4deeeb98e17",
  "source": {
    "blob": "0cc779688fb7a8b53426b5bbba689d80830b9974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f778c9746a9ac4deeeb98e177ea50c4379df0254daf0bac365ab45cc43c16aae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d56f930d-a7c4-6134-7bfa-54d4dcd304a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_integrableOn (t : ℝ) : IntegrableOn (logSample t) (Ioi 1) := by
  have hc := translated_compact v (normalizedTest_hasCompactSupport 1 (by norm_num)) t
  have hi : Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) :=
    ((continuous_id.div_const 2).rexp.mul
      (v_cont.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport hc.mul_left
  have hs : IntegrableOn (fun r : ℝ => Real.exp r * logSample t (Real.exp r)) (Ioi 0) := by
    simpa only [logSample_exp] using hi.integrableOn (s := Ioi 0)
  simpa only [smul_eq_mul, Real.exp_zero] using
    (integrableOn_comp_exp_Ioi (logSample t) 0).mp hs

/-- The derivative change of variables is a decaying exponential times the exact profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variant45750cd09dec1bd8c7688b957f5d500d3c9699c4295bc675f752e611cdaabf96.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cc779688fb7a8b53426b5bbba689d80830b9974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
