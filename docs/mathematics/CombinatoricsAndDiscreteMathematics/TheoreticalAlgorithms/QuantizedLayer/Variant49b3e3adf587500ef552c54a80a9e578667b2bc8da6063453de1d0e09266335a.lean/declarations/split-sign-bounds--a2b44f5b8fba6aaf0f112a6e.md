# split_sign_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc632b2f-94ba-94a0-2b94-a8ec397b566d",
  "kind": "theorem",
  "lexical_name": "split_sign_bounds",
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
  "slug": "split-sign-bounds--a2b44f5b8fba6aaf0f112a6e",
  "source": {
    "blob": "32e26b477374ac1cecdd7a4f21f810042983d1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2b44f5b8fba6aaf0f112a6e9d1e425aaf863a6034f52da2a32efb1734723063",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc632b2f-94ba-94a0-2b94-a8ec397b566d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_sign_bounds
    {n : Nat} (pos neg l u x : Fin n → ℝ)
    (hpos : ∀ i, 0 ≤ pos i)
    (hneg : ∀ i, 0 ≤ neg i)
    (hl : ∀ i, l i ≤ x i)
    (hu : ∀ i, x i ≤ u i) :
    let w := fun i => pos i - neg i
    let y := ∑ i, w i * x i
    (∑ i, pos i * l i) - (∑ i, neg i * u i) ≤ y ∧
    y ≤ (∑ i, pos i * u i) - (∑ i, neg i * l i) := by
  -- Expand y = Σ (pos - neg) * x = Σ pos*x - Σ neg*x
  have h_expand : (∑ i, (pos i - neg i) * x i) =
      (∑ i, pos i * x i) - (∑ i, neg i * x i) := by
    simp only [sub_mul]
    rw [Finset.sum_sub_distrib]
  simp only at h_expand ⊢
  rw [h_expand]

  -- Get bounds for positive and negative parts
  have hpos_bounds := dotProduct_bounds_nonneg pos l u x hpos hl hu
  have hneg_bounds := dotProduct_bounds_nonneg neg l u x hneg hl hu

  constructor
  · -- Lower bound: pos·l - neg·u ≤ pos·x - neg·x
    -- Use: pos·l ≤ pos·x and neg·x ≤ neg·u
    linarith [hpos_bounds.1, hneg_bounds.2]
  · -- Upper bound: pos·x - neg·x ≤ pos·u - neg·l
    -- Use: pos·x ≤ pos·u and neg·l ≤ neg·x
    linarith [hpos_bounds.2, hneg_bounds.1]

/-- ReLU preserves bounds: if lo ≤ x ≤ hi then max(0,lo) ≤ max(0,x) ≤ max(0,hi) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e26b477374ac1cecdd7a4f21f810042983d1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
