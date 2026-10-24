# lubell_yamamoto_meshalkin_inequality_sum_card_div_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1bb53d53b6afd44ae540c4a0091dde47586c0dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dfb3387-994f-a1b4-6e97-2cd75e88fd52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cec46d17-ef80-29f3-2bd9-14e08f225a0a",
  "kind": "theorem",
  "lexical_name": "lubell_yamamoto_meshalkin_inequality_sum_card_div_choose",
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
  "slug": "lubell-yamamoto-meshalkin-inequality-sum-card-div-choose--2212633f96105b13c7219e3d",
  "source": {
    "blob": "e1bb53d53b6afd44ae540c4a0091dde47586c0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 199,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2212633f96105b13c7219e3dd1019ea27edaceed20623db06820114b07b18320",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cec46d17-ef80-29f3-2bd9-14e08f225a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lubell_yamamoto_meshalkin_inequality_sum_card_div_choose
    (h𝒜 : IsAntichain (· ⊆ ·) (𝒜 : Set (Finset α))) :
    ∑ r ∈ range (Fintype.card α + 1), (#(𝒜 # r) / (Fintype.card α).choose r : 𝕜) ≤ 1 := by
  classical
    rw [← sum_flip]
    refine (le_card_falling_div_choose le_rfl h𝒜).trans ?_
    rw [div_le_iff₀] <;> norm_cast
    · simpa only [Nat.sub_self, one_mul, Nat.choose_zero_right, falling] using
        Set.Sized.card_le (sized_falling 0 𝒜)
    · rw [tsub_self, choose_zero_right]
      exact zero_lt_one

@[inherit_doc lubell_yamamoto_meshalkin_inequality_sum_card_div_choose]
alias sum_card_slice_div_choose_le_one := lubell_yamamoto_meshalkin_inequality_sum_card_div_choose

/-- The **Lubell-Yamamoto-Meshalkin inequality**, also known as the **LYM inequality**.

If `𝒜` is an antichain, then the sum of `(#α.choose #s)⁻¹` over `s ∈ 𝒜` is less than `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant05c2766f95f98cace1ffc766537b7437d91e16f813bd924fe38ce43853c10318.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bb53d53b6afd44ae540c4a0091dde47586c0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
