# exists_hardyW_ne_zero_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7db5bc38-4367-c280-53e7-1d4870beb97a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c199027-b5a2-2588-64bb-45793cc08547",
  "kind": "theorem",
  "lexical_name": "exists_hardyW_ne_zero_lower",
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
  "slug": "exists-hardyw-ne-zero-lower--e19133ce0c5f5cf7c953290d",
  "source": {
    "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 176,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19133ce0c5f5cf7c953290d6c20c8f865a548f4fe3929ae22205b1d0015ace3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c199027-b5a2-2588-64bb-45793cc08547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hardyW_ne_zero_lower : ∃ z : ℂ, z.im < 0 ∧ hardyW z ≠ 0 := by
  obtain ⟨t₁, ht₁, h⟩ := hardyW_two_line_lower
  refine ⟨2 + ((-t₁ : ℝ) : ℂ) * I, by simp; linarith, fun h0 => ?_⟩
  have := (h (-t₁) (by rw [abs_neg, abs_of_pos (by linarith)])).2
  rw [h0, norm_zero] at this; linarith

/-! ### polynomial growth of W in the strip -/

/-- ‖Γℝ′/Γℝ(s)‖ ≤ ‖s‖/4 + 5 for Re s > 0, |Im s| ≥ 2 (crude, from ‖ψ(w)‖ ≤ ‖w‖ + 8). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
