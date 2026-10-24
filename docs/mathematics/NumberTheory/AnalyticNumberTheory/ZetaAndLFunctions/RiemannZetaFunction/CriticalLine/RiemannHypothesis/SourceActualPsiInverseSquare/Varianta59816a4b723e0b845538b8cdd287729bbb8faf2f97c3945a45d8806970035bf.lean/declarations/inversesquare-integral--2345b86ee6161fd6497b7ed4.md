# inverseSquare_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25e76ab-ef23-9434-9e4e-29f8156efb61",
  "kind": "theorem",
  "lexical_name": "inverseSquare_integral",
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
  "slug": "inversesquare-integral--2345b86ee6161fd6497b7ed4",
  "source": {
    "blob": "1178d01d54b20f231149c4718350dd2323bcb626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2345b86ee6161fd6497b7ed460d3a278644f1d595b0e91e1ea4e2609ffdde9be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25e76ab-ef23-9434-9e4e-29f8156efb61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverseSquare_integral (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, (1 : ℝ) / y ^ 2) = 1 / 2 - 1 / X := by
  have hz : (0 : ℝ) ∉ uIcc (2 : ℝ) X := by
    rw [uIcc_of_le hX]
    simp
  have hi := integral_zpow (a := (2 : ℝ)) (b := X) (n := (-2 : ℤ))
    (Or.inr ⟨by norm_num, hz⟩)
  norm_num only [Int.reduceAdd, Int.cast_neg, Int.cast_one,
    zpow_neg, zpow_ofNat, pow_one] at hi
  simpa only [one_div, div_neg, div_one, neg_sub] using hi

/-- The independently supplied Xi has an integrable inverse-square finite density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178d01d54b20f231149c4718350dd2323bcb626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
