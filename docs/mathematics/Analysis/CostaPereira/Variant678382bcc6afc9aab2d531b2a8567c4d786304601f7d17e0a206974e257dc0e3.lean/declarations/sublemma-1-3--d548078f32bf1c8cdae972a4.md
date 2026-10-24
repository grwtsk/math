# sublemma_1_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0b838a3-8e0e-f8ad-dfd8-e0e0e8dffcef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21584eba-e2a5-5aeb-f579-03f5b10cb6fe",
  "kind": "theorem",
  "lexical_name": "sublemma_1_3",
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
  "slug": "sublemma-1-3--d548078f32bf1c8cdae972a4",
  "source": {
    "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 112,
    "path": "GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d548078f32bf1c8cdae972a4f57678063e1af97dfee54c501ba55e3e7a152c73",
  "verification": {
    "reference": "docs/verification/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21584eba-e2a5-5aeb-f579-03f5b10cb6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublemma_1_3 {x : ℝ} (hx : 0 < x) :
    ψ x = θ x + ψ (x ^ (1 / 2 : ℝ)) +
      ∑' (k : ℕ), θ (x ^ (1 / (2 * (k.succ : ℝ) + 1))) := by
  rw [sublemma_1_1 hx, sublemma_1_2 hx 2]
  have h_summable : Summable (fun k : ℕ ↦ θ (x ^ (1 / (k.succ : ℝ)))) := by
    obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ k ≥ N, θ (x ^ (1 / (k.succ : ℝ))) = 0 := by
      refine ⟨⌈logb 2 x⌉₊ + 1, fun k hk ↦ ?_⟩
      rw [theta_eq_zero_of_lt_two]
      norm_num
      rw [← log_lt_log_iff (rpow_pos_of_pos hx _) zero_lt_two, log_rpow hx,
        inv_mul_lt_iff₀ (cast_add_one_pos _)]
      have := lt_of_ceil_lt hk
      rw [logb, div_lt_iff₀ (log_pos one_lt_two)] at this
      nlinarith [Real.log_pos one_lt_two]
    exact summable_of_ne_finset_zero fun k hk ↦
      hN k <| le_of_not_gt fun hk' ↦ hk <| mem_range.mpr hk'
  rw [← h_summable.sum_add_tsum_nat_add 1, ← tsum_even_add_odd] <;>
    norm_num [add_assoc, mul_add]
  · convert h_summable.comp_injective
      (show (fun k ↦ 2 * k + 1).Injective from fun a b h ↦ by grind) using 2
    grind
  · convert h_summable.comp_injective
      (show (fun k ↦ 2 * k + 2).Injective from fun a b h ↦ by grind) using 2
    grind

@[blueprint
  "costa-pereira-sublemma-1-4"
  (title := "Costa-Pereira Sublemma 1.4")
  (statement :=
    /-- For every $x > 0$ we have
    \[
    \psi(x) - \theta(x) = \psi(x^{1/2})
      + \sum_{k \geqslant 1} \theta(x^{1/(6k-3)})
      + \sum_{k \geqslant 1} \theta(x^{1/(6k-1)})
      + \sum_{k \geqslant 1} \theta(x^{1/(6k+1)}).
    \]
    -/)
  (proof :=
    /-- Follows from Sublemma
    \ref{costa-pereira-sublemma-1-3}
    and rearranging the sum. -/)
  (latexEnv := "sublemma")
  (discussion := 679)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73160e7e432ce719b4d444282b5e711942fbabac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
