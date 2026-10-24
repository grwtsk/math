# measure_iUnion_congr_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bf0a9b0cd18ca80340fe5d80a441496467f3f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f9e1d8d-4d3d-379d-a289-dc0daee8a825",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:511745ca-bbfc-9268-b110-01c88a464933",
  "kind": "theorem",
  "lexical_name": "measure_iUnion_congr_of_subset",
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
  "slug": "measure-iunion-congr-of-subset--5d75dbbb3d994159533dcc7d",
  "source": {
    "blob": "5bf0a9b0cd18ca80340fe5d80a441496467f3f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 336,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d75dbbb3d994159533dcc7dc6c58b14db491be6eb09a3e527640ef3f0aca587",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:511745ca-bbfc-9268-b110-01c88a464933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_iUnion_congr_of_subset {ι : Sort*} [Countable ι] {s : ι → Set α} {t : ι → Set α}
    (hsub : ∀ i, s i ⊆ t i) (h_le : ∀ i, μ (t i) ≤ μ (s i)) : μ (⋃ i, s i) = μ (⋃ i, t i) := by
  refine le_antisymm (by gcongr; apply hsub) ?_
  by_cases! htop : ∃ i, μ (t i) = ∞
  · rcases htop with ⟨i, hi⟩
    calc
      μ (⋃ i, t i) ≤ ∞ := le_top
      _ ≤ μ (s i) := hi ▸ h_le i
      _ ≤ μ (⋃ i, s i) := measure_mono <| subset_iUnion _ _
  set M := toMeasurable μ
  have H : ∀ b, M (t b) ∩ M (⋃ b, s b) =ᵐ[μ] M (t b) := by
    refine fun b => ae_eq_of_subset_of_measure_ge inter_subset_left ?_ ?_ ?_
    · calc
        μ (M (t b)) = μ (t b) := measure_toMeasurable _
        _ ≤ μ (s b) := h_le b
        _ ≤ μ (M (t b) ∩ M (⋃ b, s b)) :=
          measure_mono <|
            subset_inter ((hsub b).trans <| subset_toMeasurable _ _)
              ((subset_iUnion _ _).trans <| subset_toMeasurable _ _)
    · measurability
    · rw [measure_toMeasurable]
      exact htop b
  calc
    μ (⋃ b, t b) ≤ μ (⋃ b, M (t b)) := measure_mono (iUnion_mono fun b => subset_toMeasurable _ _)
    _ = μ (⋃ b, M (t b) ∩ M (⋃ b, s b)) :=
      measure_congr <| .symm <| .countable_iUnion H
    _ ≤ μ (M (⋃ b, s b)) := measure_mono (iUnion_subset fun b => inter_subset_right)
    _ = μ (⋃ b, s b) := measure_toMeasurable _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf0a9b0cd18ca80340fe5d80a441496467f3f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
