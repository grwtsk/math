# eHolderNorm_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec9c50d7-8885-4742-e1bd-daf015ba91ea",
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
  "slug": "eholdernorm-eq-zero--fae0e479121e4c34a6c18cbc",
  "source": {
    "blob": "acb796187791dfe3462b5bde06d31a857c0fa205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 142,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae0e479121e4c34a6c18cbc20c8a1d72f7e76897f6069cd83a9b577984a104a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec9c50d7-8885-4742-e1bd-daf015ba91ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHolderNorm_eq_zero {r : ℝ≥0} {f : X → Y} :
    eHolderNorm r f = 0 ↔ ∀ x₁ x₂, f x₁ = f x₂ := by
  constructor
  · refine fun h x₁ x₂ => ?_
    by_cases hx : x₁ = x₂
    · rw [hx]
    · rw [eHolderNorm, ← ENNReal.bot_eq_zero, iInf₂_eq_bot] at h
      rw [← edist_eq_zero, ← le_zero_iff]
      refine le_of_forall_lt' fun b hb => ?_
      obtain ⟨C, hC, hC'⟩ := h (b / edist x₁ x₂ ^ (r : ℝ))
        (ENNReal.div_pos hb.ne.symm (ENNReal.rpow_lt_top_of_nonneg zero_le_coe
          (edist_lt_top x₁ x₂).ne).ne)
      exact lt_of_le_of_lt (hC x₁ x₂) <| ENNReal.mul_lt_of_lt_div hC'
  · intro h
    rcases isEmpty_or_nonempty X with hX | hX
    · haveI := hX
      exact eHolderNorm_of_isEmpty
    · rw [← eHolderNorm_const X r (f hX.some)]
      congr
      simp [funext_iff, h _ hX.some]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb796187791dfe3462b5bde06d31a857c0fa205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
