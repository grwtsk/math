# integral_derivWithin_uIcc_of_contDiffOn_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1dcc6a4-ae90-534c-e4c3-a46110524728",
  "kind": "theorem",
  "lexical_name": "integral_derivWithin_uIcc_of_contDiffOn_uIcc",
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
  "slug": "integral-derivwithin-uicc-of-contdiffon-uicc--95ed88f12c4d80756ea75fca",
  "source": {
    "blob": "7b0c910ba4c9626225814ab17a73ba88f466ad5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ed88f12c4d80756ea75fca0b1a7ea2a675cd26b10fe509738af10af5e78672",
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

Occurrence: `result:b1dcc6a4-ae90-534c-e4c3-a46110524728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_derivWithin_uIcc_of_contDiffOn_uIcc (h : ContDiffOn ℝ 1 f (uIcc a b)) :
    ∫ x in a..b, derivWithin f (uIcc a b) x = f b - f a := by
  rcases le_or_gt a b with hab | hab
  · simp only [uIcc_of_le hab] at h ⊢
    exact integral_derivWithin_Icc_of_contDiffOn_Icc h hab
  · simp only [uIcc_of_ge hab.le] at h ⊢
    rw [integral_symm, integral_derivWithin_Icc_of_contDiffOn_Icc h hab.le]
    abel

end intervalIntegral

open intervalIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0c910ba4c9626225814ab17a73ba88f466ad5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
