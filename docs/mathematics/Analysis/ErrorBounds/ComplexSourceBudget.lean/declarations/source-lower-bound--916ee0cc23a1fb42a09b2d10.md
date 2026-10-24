# source_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b875c0-e844-079e-e06f-8f6226461264",
  "kind": "theorem",
  "lexical_name": "source_lower_bound",
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
  "slug": "source-lower-bound--916ee0cc23a1fb42a09b2d10",
  "source": {
    "blob": "228182e2b723a3207715c6a489a6fd1ed9c5c55a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 24,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexSourceBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:916ee0cc23a1fb42a09b2d10311e3e6988c5f2a8a7a8a342b03fde707da03832",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexSourceBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b875c0-e844-079e-e06f-8f6226461264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_lower_bound (q h : ℝ) (exactSum evaluated correction correctionApprox remainder : ℂ)
    (sumError correctionError remainderLower : ℝ)
    (hsource : (q : ℂ) = (h : ℂ) - exactSum + correction + remainder)
    (hsum : ‖exactSum - evaluated‖ ≤ sumError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : remainderLower ≤ remainder.re) :
    h - evaluated.re + correctionApprox.re + remainderLower - sumError - correctionError ≤ q := by
  have hid := congrArg Complex.re hsource
  simp only [Complex.ofReal_re, Complex.sub_re, Complex.add_re] at hid
  have hs := (Complex.re_le_norm (exactSum - evaluated)).trans hsum
  simp only [Complex.sub_re] at hs
  have hc := (abs_le.mp
    ((Complex.abs_re_le_norm (correction - correctionApprox)).trans hcorrection)).1
  simp only [Complex.sub_re] at hc
  linarith

/-- The full complex discrepancy retains finite-sum, correction and remainder errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexSourceBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexSourceBudget.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228182e2b723a3207715c6a489a6fd1ed9c5c55a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
