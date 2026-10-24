# aux₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7f4da183cf52809a5f1e57b3003b14eb354fffd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4253bf9-01f9-a7cf-bf3c-84ceaf974e0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:028ece16-68cd-f6ae-df37-89fae647663e",
  "kind": "lemma",
  "lexical_name": "aux₀",
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
  "slug": "aux--f9be90fb3eed47da7eba0a34",
  "source": {
    "blob": "b7f4da183cf52809a5f1e57b3003b14eb354fffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 58,
    "path": "GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9be90fb3eed47da7eba0a3430ae600e4446e0be9f39f029a8eb51c95db97479",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028ece16-68cd-f6ae-df37-89fae647663e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma aux₀
    (h : ∀ δ, 0 < δ →
      ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s) :
    ¬Tendsto (fun r ↦ volume (closure s ∩ closedBall x r) / volume (closedBall x r)) (𝓝[>] 0)
        (𝓝 0) := by
  choose f hf₀ hf₁ using h
  intro H
  obtain ⟨ε, -, hε', hε₀⟩ := exists_seq_strictAnti_tendsto_nhdsWithin (0 : ℝ)
  refine not_eventually.2
    (Frequently.of_forall fun _ ↦ lt_irrefl <| ENNReal.ofReal <| 4⁻¹ ^ Fintype.card ι)
    ((Filter.Tendsto.eventually_lt (H.comp hε₀) tendsto_const_nhds ?_).mono fun n ↦
      lt_of_le_of_lt ?_)
  on_goal 2 =>
    calc
      ENNReal.ofReal (4⁻¹ ^ Fintype.card ι)
        = volume (closedBall (f (ε n) (hε' n)) (ε n / 4)) / volume (closedBall x (ε n)) := ?_
      _ ≤ volume (closure s ∩ closedBall x (ε n)) / volume (closedBall x (ε n)) := by
        gcongr
        exact subset_inter ((hf₁ _ <| hε' n).trans interior_subset_closure) <| hf₀ _ <| hε' n
    have := hε' n
    rw [Real.volume_pi_closedBall, Real.volume_pi_closedBall, ← ENNReal.ofReal_div_of_pos,
      ← div_pow, mul_div_mul_left _ _ (two_ne_zero' ℝ), div_right_comm, div_self, one_div]
  all_goals positivity

/-- If we can fit a small ball inside a set `sᶜ` intersected with any neighborhood of `x`, then the
density of `s` near `x` is not `1`.

Along with `aux₀`, this proves that `x` is a Lebesgue point of `s`. This will be used to prove that
the frontier of an order-connected set is null. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f4da183cf52809a5f1e57b3003b14eb354fffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
