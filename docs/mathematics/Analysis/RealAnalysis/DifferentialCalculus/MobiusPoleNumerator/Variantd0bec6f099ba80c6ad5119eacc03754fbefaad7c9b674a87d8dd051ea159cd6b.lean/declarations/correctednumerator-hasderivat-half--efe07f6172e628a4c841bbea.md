# correctedNumerator_hasDerivAt_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06d6ca9acab19120496446e17dfd65dbcdd0aff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83ee6fc4-8843-af1e-da2c-79c4785da29f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb243de1-ba03-3daa-3d40-456e33725d69",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_hasDerivAt_half",
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
  "slug": "correctednumerator-hasderivat-half--efe07f6172e628a4c841bbea",
  "source": {
    "blob": "06d6ca9acab19120496446e17dfd65dbcdd0aff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe07f6172e628a4c841bbeada649a2d3878d8226e0cb77d826944461416d183",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb243de1-ba03-3daa-3d40-456e33725d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_hasDerivAt_half (X : ℕ) (hX : 1 ≤ X) :
    HasDerivAt (correctedNumerator X) (logNormalization X : ℂ) (1 / 2) := by
  convert! correctedNumerator_hasDerivAt X (1 / 2) using 1
  rw [logNormalization_eq X hX]
  simp only [sub_self, zero_mul, Complex.exp_zero, one_mul]
  have hs : (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) =
      -(∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ)) := by
    rw [← sum_neg_distrib]
    apply sum_congr rfl
    intro n hn
    rw [exponential_at_half n (mem_Icc.mp hn).1]
    ring
  rw [hs]
  ring

/-- The entire divided difference performs the pole cancellation before any controller cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d6ca9acab19120496446e17dfd65dbcdd0aff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
