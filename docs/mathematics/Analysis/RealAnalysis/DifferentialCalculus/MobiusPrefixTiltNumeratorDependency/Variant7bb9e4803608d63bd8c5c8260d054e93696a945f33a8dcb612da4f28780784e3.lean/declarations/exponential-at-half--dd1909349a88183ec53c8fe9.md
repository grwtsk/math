# exponential_at_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3626f7b3-9946-d597-b0e3-6bdb650ede62",
  "kind": "theorem",
  "lexical_name": "exponential_at_half",
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
  "slug": "exponential-at-half--dd1909349a88183ec53c8fe9",
  "source": {
    "blob": "0c38281010bbc4df6aeca37055b67f721bbdbdd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant7bb9e4803608d63bd8c5c8260d054e93696a945f33a8dcb612da4f28780784e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1909349a88183ec53c8fe900da8e6916ebf2c44b585a83a3a8c1d426c54f61",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant7bb9e4803608d63bd8c5c8260d054e93696a945f33a8dcb612da4f28780784e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3626f7b3-9946-d597-b0e3-6bdb650ede62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_at_half (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h : -(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) : ℝ) : ℂ) := by push_cast; ring
  rw [h, ← Complex.ofReal_exp, Real.exp_neg, Real.exp_log hn0, Complex.ofReal_inv]
  rfl

/-- The finite numerator at one half is exactly the original signed reciprocal sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant7bb9e4803608d63bd8c5c8260d054e93696a945f33a8dcb612da4f28780784e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant7bb9e4803608d63bd8c5c8260d054e93696a945f33a8dcb612da4f28780784e3.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c38281010bbc4df6aeca37055b67f721bbdbdd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
