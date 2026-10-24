# hardyW_growth

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
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:560b94d8-85c9-1096-03cf-0e866c38bdd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01045614-bace-4283-3e61-d031fcfcaa3c",
  "kind": "theorem",
  "lexical_name": "hardyW_growth",
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
  "slug": "hardyw-growth--151937c2ff5eb94d8a43e6ed",
  "source": {
    "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 259,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151937c2ff5eb94d8a43e6ed03cfbb17f7a156b4aae4e3952938f062f635ee1b",
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

Occurrence: `result:01045614-bace-4283-3e61-d031fcfcaa3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_growth : ∃ C : ℝ, 0 < C ∧ ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| →
    ‖hardyW s‖ ≤ C * |s.im| ^ 2 := by
  obtain ⟨Cζ, hCζ, hζb⟩ := Zeta23.RvM.zeta_growth (δ := 1 / 16) (by norm_num)
  refine ⟨40 * Cζ, by positivity, fun s hre hre' him => ?_⟩
  set t : ℝ := |s.im| with ht
  have ht2 : 2 ≤ t := him
  have hζ : ‖riemannZeta s‖ ≤ Cζ * t := hζb s (by linarith) (by linarith)
  have hζ' : ‖deriv riemannZeta s‖ ≤ 24 * Cζ * t :=
    Zeta23.XiPrime.ZeroCount.norm_deriv_zeta_le hCζ hζb hre him
  have hL : ‖L2 s‖ ≤ 2 * t + 12 := norm_L2_le hre hre' him
  calc ‖hardyW s‖ = ‖deriv riemannZeta s + L2 s * riemannZeta s‖ := rfl
    _ ≤ ‖deriv riemannZeta s‖ + ‖L2 s‖ * ‖riemannZeta s‖ := by
        refine (norm_add_le _ _).trans ?_; rw [norm_mul]
    _ ≤ 24 * Cζ * t + (2 * t + 12) * (Cζ * t) := by gcongr
    _ ≤ 40 * Cζ * t ^ 2 := by
        have hCt : 0 ≤ Cζ * t := by positivity
        have h12 : 12 ≤ 6 * t := by linarith
        nlinarith [hCt, h12]

end Hardy
end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
