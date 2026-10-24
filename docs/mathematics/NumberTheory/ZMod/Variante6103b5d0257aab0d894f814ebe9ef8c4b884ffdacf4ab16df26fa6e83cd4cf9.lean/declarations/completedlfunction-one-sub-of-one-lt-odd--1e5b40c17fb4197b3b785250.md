# completedLFunction_one_sub_of_one_lt_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "877b3290807830b2260b8959a1fbfd32a04f196b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9504347-f7aa-ae2a-5bbb-8b38d1c7fcad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56319c43-23df-1110-fe85-f55035a04039",
  "kind": "lemma",
  "lexical_name": "completedLFunction_one_sub_of_one_lt_odd",
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
  "slug": "completedlfunction-one-sub-of-one-lt-odd--1e5b40c17fb4197b3b785250",
  "source": {
    "blob": "877b3290807830b2260b8959a1fbfd32a04f196b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 434,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e5b40c17fb4197b3b785250d244e5b0ca75f974d227fb6fb887c545e8ca14bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56319c43-23df-1110-fe85-f55035a04039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma completedLFunction_one_sub_of_one_lt_odd (hΦ : Φ.Odd) {s : ℂ} (hs : 1 < re s) :
    completedLFunction Φ (1 - s) = N ^ (s - 1) * I * completedLFunction (𝓕 Φ) s := by
  -- strip down to the key equality:
  suffices ∑ x, Φ x * completedSinZeta (toAddCircle x) s = I * completedLFunction (𝓕 Φ) s by
    simp only [completedLFunction_def_odd hΦ, neg_sub, completedHurwitzZetaOdd_one_sub, this,
      mul_assoc]
  -- reduce to equality with un-completed L-functions:
  suffices ∑ x, Φ x * sinZeta (toAddCircle x) s = I * LFunction (𝓕 Φ) s by
    have hs' : 0 < re (s + 1) := by simp only [add_re, one_re]; linarith
    simpa only [sinZeta, ← mul_div_assoc, ← sum_div, div_left_inj' (Gammaℝ_ne_zero_of_re_pos hs'),
      LFunction_eq_completed_div_gammaFactor_odd (dft_odd_iff.mpr hΦ)]
  -- now calculate:
  calc ∑ x, Φ x * sinZeta (toAddCircle x) s
  _ = (∑ x, Φ x * expZeta (toAddCircle x) s) / (2 * I)
      - (∑ x, Φ x * expZeta (toAddCircle (-x)) s) / (2 * I) := by
    simp only [sinZeta_eq, ← mul_div_assoc, mul_sub, sub_div, sum_sub_distrib, sum_div, map_neg]
  _ = (∑ x, Φ (-x) * expZeta (toAddCircle (-x)) s) / (_) - (_) := by
    congrm ?_ / _ - _
    exact (Fintype.sum_equiv (.neg _) _ _ fun x ↦ by rfl).symm
  _ = -I⁻¹ * LFunction (𝓕 Φ) s := by
    simp only [hΦ _, neg_mul, sum_neg_distrib, LFunction_dft Φ (.inl hΦ.map_zero)]
    ring
  _ = I * LFunction (𝓕 Φ) s := by rw [inv_I, neg_neg]

/--
Functional equation for completed L-functions (even case), valid at all points of differentiability.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877b3290807830b2260b8959a1fbfd32a04f196b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
