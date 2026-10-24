# eHolderNorm_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2ecb65f-cd96-a467-6a7b-86f9a35bd79d",
  "kind": "lemma",
  "lexical_name": "eHolderNorm_eq_zero",
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
  "slug": "eholdernorm-eq-zero--24ba1bb18e9a51e1fbc789dd",
  "source": {
    "blob": "bccd7b34ab8ad5c635391a39e37be13e98ec42fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 210,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ba1bb18e9a51e1fbc789dd7c4773fa18098da60d489c6ce787707add372408",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ecb65f-cd96-a467-6a7b-86f9a35bd79d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHolderNorm_eq_zero {r : ℝ≥0} {f : X → Y} :
    eHolderNorm r f = 0 ↔ ∀ x₁ x₂, f x₁ = f x₂ := by
  constructor
  · intro h x₁ x₂
    by_cases hx : x₁ = x₂
    · rw [hx]
    · rw [eHolderNorm, ← ENNReal.bot_eq_zero, iInf₂_eq_bot] at h
      rw [← edist_eq_zero, ← nonpos_iff_eq_zero]
      refine le_of_forall_gt fun b hb => ?_
      obtain ⟨C, hC, hC'⟩ := h (b / edist x₁ x₂ ^ (r : ℝ))
        (ENNReal.div_pos hb.ne.symm (ENNReal.rpow_lt_top_of_nonneg zero_le_coe
          (edist_lt_top x₁ x₂).ne).ne)
      exact lt_of_le_of_lt (hC x₁ x₂) <| ENNReal.mul_lt_of_lt_div hC'
  · intro h
    rcases isEmpty_or_nonempty X with hX | hX
    · exact eHolderNorm_of_isEmpty
    · rw [← eHolderNorm_const X r (f hX.some)]
      congr
      simp [funext_iff, h _ hX.some]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccd7b34ab8ad5c635391a39e37be13e98ec42fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
