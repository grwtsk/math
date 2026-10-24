# primitiveWeilLaplace_decay_fixedRealPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4cafb8ca3777a9ee3f4f86f0a9a78f4be5d2d9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99e5d171-95e7-146c-4fa3-69ec9f12ba4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:561989d6-4ddd-4dc2-407e-7aef1899d71e",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_decay_fixedRealPart",
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
  "slug": "primitiveweillaplace-decay-fixedrealpart--9d4fb658067ad829ea3ae6e5",
  "source": {
    "blob": "e4cafb8ca3777a9ee3f4f86f0a9a78f4be5d2d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 121,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d4fb658067ad829ea3ae6e508174fffbec67a7e10d3353cdc9ec237f8d31f5b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:561989d6-4ddd-4dc2-407e-7aef1899d71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_decay_fixedRealPart
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (k : ℕ) :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
      ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        C / (1 + |t|) ^ k := by
  obtain ⟨C₀, hC₀, hzero⟩ :=
    primitiveWeilLaplace_vertical_pow_bound g sigma 0
  obtain ⟨Cₖ, hCₖ, hk⟩ :=
    primitiveWeilLaplace_vertical_pow_bound g sigma k
  let C := (2 : ℝ) ^ k * (C₀ + Cₖ)
  have hC : 0 < C := by
    dsimp [C]
    positivity
  refine ⟨C, hC, fun t ↦ ?_⟩
  rw [le_div_iff₀' (pow_pos (by positivity : 0 < 1 + |t|) k)]
  have hnorm :
      ‖primitiveWeilLaplace g
        ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul] using hzero t
  by_cases ht : |t| ≤ 1
  · calc
      (1 + |t|) ^ k * ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖
          ≤ (1 + |t|) ^ k * C₀ :=
        mul_le_mul_of_nonneg_left hnorm (pow_nonneg (by positivity) k)
      _ ≤ 2 ^ k * C₀ := by
        gcongr
        nlinarith
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]
  · have htOne : 1 ≤ |t| := le_of_not_ge ht
    have hsum : 1 + |t| ≤ 2 * |t| := by nlinarith
    calc
      (1 + |t|) ^ k * ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖
          ≤ (2 * |t|) ^ k * ‖primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
        gcongr
      _ = 2 ^ k *
          (|t| ^ k * ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖) := by
        rw [mul_pow]
        ring
      _ ≤ 2 ^ k * Cₖ :=
        mul_le_mul_of_nonneg_left (hk t) (pow_nonneg (by norm_num) k)
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cafb8ca3777a9ee3f4f86f0a9a78f4be5d2d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
