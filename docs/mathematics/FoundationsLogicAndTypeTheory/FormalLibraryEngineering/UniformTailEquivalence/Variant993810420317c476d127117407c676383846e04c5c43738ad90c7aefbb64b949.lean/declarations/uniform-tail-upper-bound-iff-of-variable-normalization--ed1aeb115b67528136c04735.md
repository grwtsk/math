# uniform_tail_upper_bound_iff_of_variable_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b120d83fb01a14d412ecdd8062f0e93f68c29855",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b2e55e5-1b0f-a331-0e64-ab0eb0f1424e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae37d888-9df8-c765-f8e5-97ee98691bf8",
  "kind": "theorem",
  "lexical_name": "uniform_tail_upper_bound_iff_of_variable_normalization",
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
  "slug": "uniform-tail-upper-bound-iff-of-variable-normalization--ed1aeb115b67528136c04735",
  "source": {
    "blob": "b120d83fb01a14d412ecdd8062f0e93f68c29855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed1aeb115b67528136c04735eee8f87e664806dd4baa78e367dd632cedde47fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae37d888-9df8-c765-f8e5-97ee98691bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_tail_upper_bound_iff_of_variable_normalization {f g : ℝ → ℝ}
    (c : ℝ → ℝ) (m M K R : ℝ) (hm : 0 < m) (hmM : m ≤ M)
    (hK : 0 ≤ K) (hR : 1 ≤ R)
    (h : ∀ A : ℝ, R ≤ A → m ≤ c A ∧ c A ≤ M ∧ |g A - c A * f A| ≤ K) :
    UniformTailUpperBound f ↔ UniformTailUpperBound g := by
  have hM : 0 ≤ M := hm.le.trans hmM
  constructor
  · rintro ⟨B, hB, S, _, hf⟩
    refine ⟨M * B + K, add_nonneg (mul_nonneg hM hB) hK,
      max S R, hR.trans (le_max_right _ _), ?_⟩
    intro A hA
    obtain ⟨hl, hu, he⟩ := h A ((le_max_right _ _).trans hA)
    have hfA := hf A ((le_max_left _ _).trans hA)
    have hc : 0 ≤ c A := hm.le.trans hl
    have hmul := (mul_le_mul_of_nonneg_left hfA hc).trans
      (mul_le_mul_of_nonneg_right hu hB)
    have herr := (abs_le.mp he).2
    linarith
  · rintro ⟨B, hB, S, _, hg⟩
    refine ⟨(B + K) / m, div_nonneg (add_nonneg hB hK) hm.le,
      max S R, hR.trans (le_max_right _ _), ?_⟩
    intro A hA
    obtain ⟨hl, _, he⟩ := h A ((le_max_right _ _).trans hA)
    have hgA := hg A ((le_max_left _ _).trans hA)
    by_cases hfA : 0 ≤ f A
    · have hmul := mul_le_mul_of_nonneg_right hl hfA
      have herr := (abs_le.mp he).1
      apply (le_div_iff₀ hm).mpr
      nlinarith
    · exact (le_of_not_ge hfA).trans (div_nonneg (add_nonneg hB hK) hm.le)

end FormalResearch.MathematicalTooling.UniformTailEquivalence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b120d83fb01a14d412ecdd8062f0e93f68c29855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
