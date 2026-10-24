# damped_cosine_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b679b39-b8de-e6df-a70e-84590245bd4a",
  "kind": "theorem",
  "lexical_name": "damped_cosine_integral",
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
  "slug": "damped-cosine-integral--6621408d9782a4237d03f343",
  "source": {
    "blob": "4c63da6c036d77103c7bda0672771339b1576024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6621408d9782a4237d03f34374e794a0c93ff55fae91e658c5877c6f66f9d698",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b679b39-b8de-e6df-a70e-84590245bd4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem damped_cosine_integral {a : ℝ} (ha : 0 < a) (b : ℝ) :
    (∫ t : ℝ in Ioi 0, Real.exp (-a*t)*Real.cos (b*t)) = a/(a^2+b^2) := by
  have hc : (((-a : ℝ) : ℂ) + (b : ℂ)*Complex.I).re < 0 := by simpa
  simp_rw [damped_cosine_eq_real]
  simp_rw [← RCLike.re_to_complex]
  rw [integral_re (integrableOn_exp_mul_complex_Ioi hc 0),
    integral_exp_mul_complex_Ioi hc 0]
  simp [Complex.div_re, Complex.normSq_apply, sq, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c63da6c036d77103c7bda0672771339b1576024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
