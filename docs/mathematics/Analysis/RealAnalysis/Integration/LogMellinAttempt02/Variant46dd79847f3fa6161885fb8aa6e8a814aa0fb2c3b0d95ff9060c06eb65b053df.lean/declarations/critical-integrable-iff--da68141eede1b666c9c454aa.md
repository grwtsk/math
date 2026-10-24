# critical_integrable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e15fbe9-001e-490a-cb8c-065feeee78b3",
  "kind": "theorem",
  "lexical_name": "critical_integrable_iff",
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
  "slug": "critical-integrable-iff--da68141eede1b666c9c454aa",
  "source": {
    "blob": "d4d68a4cb4397c03411df6dd37b66474e313fda0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant46dd79847f3fa6161885fb8aa6e8a814aa0fb2c3b0d95ff9060c06eb65b053df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da68141eede1b666c9c454aa182461ca574c588b5d3c206c4fddc8ab91d9f7a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant46dd79847f3fa6161885fb8aa6e8a814aa0fb2c3b0d95ff9060c06eb65b053df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e15fbe9-001e-490a-cb8c-065feeee78b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_integrable_iff (f : ℝ → ℂ) (ξ : ℝ) :
    MellinConvergent f ((1:ℂ)/2+Complex.I*(ξ:ℂ)) ↔
      Integrable (fun u : ℝ => Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*logFunc f u) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn
    (fun x : ℝ => (x:ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f x)
  simpa only [MellinConvergent,smul_eq_mul,image_univ,Real.range_exp,
    abs_of_pos (Real.exp_pos _),Complex.real_smul,critical_jacobian,
    IntegrableOn,Measure.restrict_univ] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant46dd79847f3fa6161885fb8aa6e8a814aa0fb2c3b0d95ff9060c06eb65b053df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant46dd79847f3fa6161885fb8aa6e8a814aa0fb2c3b0d95ff9060c06eb65b053df.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d68a4cb4397c03411df6dd37b66474e313fda0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
