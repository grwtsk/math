# zero_count_chamber_failure_requires_discriminant_or_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f917491-606b-8b2d-d993-88380b1e6876",
  "kind": "theorem",
  "lexical_name": "zero_count_chamber_failure_requires_discriminant_or_boundary",
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
  "slug": "zero-count-chamber-failure-requires-discriminant-or-boundary--9d1a04141ccdcd446c80a3ec",
  "source": {
    "blob": "b2204ae8d00905a3577523a52a736cea9cea12b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d1a04141ccdcd446c80a3ec442a79be2853dc2cfda850d1de997d747a8ce2e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f917491-606b-8b2d-d993-88380b1e6876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_count_chamber_failure_requires_discriminant_or_boundary
    {g : ℝ × ℝ → ℝ} {l₀ a b : ℝ}
    (hab : a < b) (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀,x))
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hfailure : ¬ ∃ U : Set ℝ, IsOpen U ∧ l₀ ∈ U ∧ ∀ l ∈ U,
      {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard =
        {x | x ∈ Icc a b ∧ g (l₀,x) = 0}.ncard) :
    g (l₀,a) = 0 ∨ g (l₀,b) = 0 ∨
      ∃ x ∈ Ioo a b, g (l₀,x) = 0 ∧ spatialSlope g (l₀,x) = 0 := by
  classical
  by_contra h
  have ha : g (l₀,a) ≠ 0 := fun hz => h (Or.inl hz)
  have hb : g (l₀,b) ≠ 0 := fun hz => h (Or.inr (Or.inl hz))
  have hs : ∀ x ∈ Ioo a b, g (l₀,x) = 0 → spatialSlope g (l₀,x) ≠ 0 := by
    intro x hx hz hslope
    exact h (Or.inr (Or.inr ⟨x,hx,hz,hslope⟩))
  exact hfailure (actual_zero_count_locally_constant hab hc ha hb hfinite hs)

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroChamberConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2204ae8d00905a3577523a52a736cea9cea12b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
