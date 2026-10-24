# completedLFunction_one_sub_of_one_lt_even

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
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84b6079b-b97a-a72d-c9b0-8eb61698839f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc83817d-811a-eebe-106f-7e40dcdfdb1b",
  "kind": "lemma",
  "lexical_name": "completedLFunction_one_sub_of_one_lt_even",
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
  "slug": "completedlfunction-one-sub-of-one-lt-even--5b1cb71676fe1823007081a6",
  "source": {
    "blob": "877b3290807830b2260b8959a1fbfd32a04f196b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 411,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b1cb71676fe1823007081a61025337a34dde824f1b9092b7f6cf077224ef607",
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

Occurrence: `result:cc83817d-811a-eebe-106f-7e40dcdfdb1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma completedLFunction_one_sub_of_one_lt_even (hΦ : Φ.Even) {s : ℂ} (hs : 1 < re s) :
    completedLFunction Φ (1 - s) = N ^ (s - 1) * completedLFunction (𝓕 Φ) s := by
  have hs₀ : s ≠ 0 := ne_zero_of_one_lt_re hs
  have hs₁ : s ≠ 1 := (lt_irrefl _ <| one_re ▸ · ▸ hs)
  -- strip down to the key equality:
  suffices ∑ x, Φ x * completedCosZeta (toAddCircle x) s = completedLFunction (𝓕 Φ) s by
    simp only [completedLFunction_def_even hΦ, neg_sub, completedHurwitzZetaEven_one_sub, this]
  -- reduce to equality with un-completed L-functions:
  suffices ∑ x, Φ x * cosZeta (toAddCircle x) s = LFunction (𝓕 Φ) s by
    simpa only [cosZeta, Function.update_of_ne hs₀, ← mul_div_assoc, ← sum_div,
      LFunction_eq_completed_div_gammaFactor_even (dft_even_iff.mpr hΦ) _ (.inl hs₀),
      div_left_inj' (Gammaℝ_ne_zero_of_re_pos (zero_lt_one.trans hs))]
  -- expand out `LFunction (𝓕 Φ)` and use parity:
  simp only [cosZeta_eq, ← mul_div_assoc _ _ (2 : ℂ), mul_add, ← sum_div, sum_add_distrib,
    LFunction_dft Φ (.inr hs₁), map_neg, div_eq_iff (two_ne_zero' ℂ), mul_two, add_left_inj]
  exact Fintype.sum_equiv (.neg _) _ _ (by simp [hΦ _])

/--
First form of functional equation for completed L-functions (odd case).

Private because it is superseded by `completedLFunction_one_sub_odd` below, which is valid for a
much wider range of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877b3290807830b2260b8959a1fbfd32a04f196b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
