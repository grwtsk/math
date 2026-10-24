# hardyW_ne_zero_of_one_le_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f3a45d4-ebf9-22d9-96a6-490c08d8d51a",
  "kind": "theorem",
  "lexical_name": "hardyW_ne_zero_of_one_le_re",
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
  "slug": "hardyw-ne-zero-of-one-le-re--7385c0410c5bf436e4e3b278",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 532,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7385c0410c5bf436e4e3b2789d1af8bf26908980ae380bbc4b5e58b068b99f82",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3a45d4-ebf9-22d9-96a6-490c08d8d51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_ne_zero_of_one_le_re : ∃ t₀ : ℝ, 0 < t₀ ∧ ∀ s : ℂ, 1 ≤ s.re → t₀ ≤ |s.im| →
    hardyW s ≠ 0 := by
  obtain ⟨tA, htA, hA⟩ := regionA
  obtain ⟨tB, htB, hB⟩ := regionB
  refine ⟨max tA tB, by positivity, fun s hre ht => ?_⟩
  have hs : s.im ≠ 0 := fun h => by
    rw [h, abs_zero] at ht; linarith [le_max_left tA tB]
  have hζ : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_le_re hre
  rw [hardyW_eq_mul hζ]
  refine mul_ne_zero hζ (fun h0 => ?_)
  rcases le_or_gt s.re 2 with h2 | h2
  · have hpos := hA s hre h2 (le_trans (le_max_left _ _) ht)
    rw [← logDeriv_zeta_add_L2 hs (by linarith) hζ, h0, Complex.zero_re] at hpos
    exact lt_irrefl _ hpos
  · have hpos := hB s (by linarith) (le_trans (le_max_right _ _) ht)
    rw [h0, Complex.zero_re] at hpos
    exact lt_irrefl _ hpos

end ZeroFree
end Hardy

/-- **(Z6), unconditionally**: there is a height t₀ > 0 above which every zero of W = ζ′ + L₂ζ lies in the
open critical strip 0 < Re s < 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
