# rightCont_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb8b631b-5d35-68e3-46c3-e2962315b0e3",
  "kind": "lemma",
  "lexical_name": "rightCont_self",
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
  "slug": "rightcont-self--c2babaca20923b4a25fd44f6",
  "source": {
    "blob": "ad86d6c454e2d1dd7d3bc5e4a41877be9b6fe9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 352,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2babaca20923b4a25fd44f6eedfc604d9a5ac2c5d40908297760304e45d7c40",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8b631b-5d35-68e3-46c3-e2962315b0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma rightCont_self (𝓕 : Filtration ι m) : 𝓕₊₊ = 𝓕₊ := by
  let := Preorder.topology ι; have : OrderTopology ι := ⟨rfl⟩
  apply le_antisymm _ 𝓕₊.le_rightCont
  intro i
  by_cases hne : (𝓝[>] i).NeBot
  · have hineq : (⨅ j > i, 𝓕₊ j) ≤ ⨅ j > i, 𝓕 j := by
      apply le_iInf₂ fun u hu => ?_
      have hiou : Set.Ioo i u ∈ 𝓝[>] i := by
        rw [mem_nhdsWithin_iff_exists_mem_nhds_inter]
        exact ⟨Set.Iio u, (isOpen_Iio' u).mem_nhds hu, fun _ hx ↦ ⟨hx.2, hx.1⟩⟩
      obtain ⟨v, hv⟩ := hne.nonempty_of_mem hiou
      have hle₁ : (⨅ j > i, 𝓕₊ j) ≤ 𝓕₊ v := iInf₂_le_of_le v hv.1 le_rfl
      have hle₂ : 𝓕₊ v ≤ 𝓕 u := by
        by_cases hnv : (𝓝[>] v).NeBot
        · simpa [rightCont_eq_of_neBot_nhdsGT] using iInf₂_le_of_le u hv.2 le_rfl
        · simpa [rightCont_apply, hnv] using 𝓕.mono hv.2.le
      exact hle₁.trans hle₂
    simpa [rightCont_eq_of_neBot_nhdsGT] using hineq
  · rw [rightCont_apply, ite_eq_right hne]

/-- A filtration `𝓕` is right continuous if it is equal to its right continuation `𝓕₊`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad86d6c454e2d1dd7d3bc5e4a41877be9b6fe9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
