# rightCont_eq_of_exists_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57ab9228-d0a0-1f32-251e-c387a0a1693d",
  "kind": "lemma",
  "lexical_name": "rightCont_eq_of_exists_gt",
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
  "slug": "rightcont-eq-of-exists-gt--ff3890caeb05c54d7aadc319",
  "source": {
    "blob": "7d4846e54d35fcc055057adb711804c94590fe26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 320,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff3890caeb05c54d7aadc319c9d777ace7475440f9853c56d823ec37631252f4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57ab9228-d0a0-1f32-251e-c387a0a1693d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightCont_eq_of_exists_gt [LinearOrder ι] (𝓕 : Filtration ι m) {i : ι}
    (hi : ∃ j > i, Set.Ioo i j = ∅) :
    𝓕₊ i = 𝓕 i := by
  let := Preorder.topology ι; have : OrderTopology ι := ⟨rfl⟩
  obtain ⟨j, hij, hIoo⟩ := hi
  have hcov : i ⋖ j := covBy_iff_Ioo_eq.mpr ⟨hij, hIoo⟩
  exact rightCont_eq_of_nhdsGT_eq_bot _ <| CovBy.nhdsGT hcov

/-- If `i` is not isolated on the right, then `𝓕₊ i = ⨅ j > i, 𝓕 j`. This is for instance the case
when `ι` is a densely ordered linear order with no maximal elements and equipped with the order
topology, see `rightCont_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variantda64d76b5118525c290300c2d5b6198e3c127f9dc31fea1e502490bc1c46a6d0.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4846e54d35fcc055057adb711804c94590fe26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
