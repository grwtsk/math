# integral_deriv_of_contDiffOn_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f146a52-484a-18fc-2430-a206ebe79e4d",
  "kind": "theorem",
  "lexical_name": "integral_deriv_of_contDiffOn_uIcc",
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
  "slug": "integral-deriv-of-contdiffon-uicc--33f0e60f2a32574a0b0dc4c4",
  "source": {
    "blob": "7b0c910ba4c9626225814ab17a73ba88f466ad5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33f0e60f2a32574a0b0dc4c4fb6ca430b8ac2ffc2e7537fe275688e210525957",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f146a52-484a-18fc-2430-a206ebe79e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_deriv_of_contDiffOn_uIcc (h : ContDiffOn ℝ 1 f (uIcc a b)) :
    ∫ x in a..b, deriv f x = f b - f a := by
  rcases le_or_gt a b with hab | hab
  · simp only [uIcc_of_le hab] at h
    exact integral_deriv_of_contDiffOn_Icc h hab
  · simp only [uIcc_of_ge hab.le] at h
    rw [integral_symm, integral_deriv_of_contDiffOn_Icc h hab.le]
    abel

/-- Fundamental theorem of calculus-2: If `f : ℝ → E` is `C^1` on `[a, b]`,
then `∫ y in a..b, derivWithin f (uIcc a b) y` equals `f b - f a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0c910ba4c9626225814ab17a73ba88f466ad5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
