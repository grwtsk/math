# fintypeProd_pos_of_even_negative_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2876cc3a70779b2bddf7cfb40100d255caace477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:934f6142-b577-8504-530f-0ceef75466fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05f8383a-6068-4c48-2986-9dd9996e4634",
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
  "slug": "fintypeprod-pos-of-even-negative-count--239266be842d90e3b27de076",
  "source": {
    "blob": "2876cc3a70779b2bddf7cfb40100d255caace477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:239266be842d90e3b27de076fe873e6d8657affbe7fb2ef1fa69b45e0cb162ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05f8383a-6068-4c48-2986-9dd9996e4634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–59.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2876cc3a70779b2bddf7cfb40100d255caace477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
