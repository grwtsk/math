# fintypeProd_pos_of_even_negative_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be8f0031-c600-3a3d-6c57-c951504d0a6d",
  "kind": "theorem",
  "lexical_name": "fintypeProd_pos_of_even_negative_count",
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
  "slug": "fintypeprod-pos-of-even-negative-count--dfe6688ef9ec6040759d7463",
  "source": {
    "blob": "68a79d610ba96b9b9c90842c507f9cdb3b67eeba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe6688ef9ec6040759d746340e44f6bee6a2fa150f926b0da7d852e34616b6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be8f0031-c600-3a3d-6c57-c951504d0a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fintypeProd_pos_of_even_negative_count
    {ι : Type*} [Fintype ι] (f : ι → ℝ)
    (hnz : ∀ i, f i ≠ 0)
    (heven : Even (Fintype.card {i // f i < 0})) :
    0 < ∏ i, f i := by
  classical
  have hnegEven :
      Even ((Finset.univ.filter fun i => f i < 0).card) := by
    simpa only [Fintype.card_subtype] using heven
  have hfilters :
      (Finset.univ.filter fun i => f i ≤ 0) =
        Finset.univ.filter fun i => f i < 0 := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · intro hi
      exact lt_of_le_of_ne hi (hnz i)
    · exact le_of_lt
  have hnonposEven :
      Even ((Finset.univ.filter fun i => f i ≤ 0).card) := by
    rw [hfilters]
    exact hnegEven
  have hnonneg : 0 ≤ ∏ i, f i := by
    simpa using
      (Finset.prod_nonneg_of_card_nonpos_even
        (f := f) (s := Finset.univ) hnonposEven)
  have hprodne : (∏ i, f i) ≠ 0 := by
    exact Finset.prod_ne_zero_iff.mpr fun i _ => hnz i
  exact lt_of_le_of_ne hnonneg (Ne.symm hprodne)

/-- With no zero compressed-phase eigenvalue, even negative inertia makes the
normalized finite theta determinant strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a79d610ba96b9b9c90842c507f9cdb3b67eeba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
