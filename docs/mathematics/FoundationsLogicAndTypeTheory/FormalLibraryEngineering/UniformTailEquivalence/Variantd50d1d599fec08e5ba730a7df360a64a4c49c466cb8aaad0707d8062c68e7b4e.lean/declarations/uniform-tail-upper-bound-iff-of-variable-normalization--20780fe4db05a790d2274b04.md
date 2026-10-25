# uniform_tail_upper_bound_iff_of_variable_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f9d676-042a-c6c2-20b8-f46e7e2f4fca",
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
  "slug": "uniform-tail-upper-bound-iff-of-variable-normalization--20780fe4db05a790d2274b04",
  "source": {
    "blob": "1dfaf326362298291b14e2dcd917643fa5189d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20780fe4db05a790d2274b04595776431a1e801b0b3c972789d91333f16f837d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f9d676-042a-c6c2-20b8-f46e7e2f4fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–240.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniformTailEquivalence/Variantd50d1d599fec08e5ba730a7df360a64a4c49c466cb8aaad0707d8062c68e7b4e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfaf326362298291b14e2dcd917643fa5189d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
