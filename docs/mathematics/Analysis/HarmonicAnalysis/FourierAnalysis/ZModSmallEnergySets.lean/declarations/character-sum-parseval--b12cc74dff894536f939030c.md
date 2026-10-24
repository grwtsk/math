# character_sum_parseval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67cb7b57-044d-b086-5267-971815f2b031",
  "kind": "theorem",
  "lexical_name": "character_sum_parseval",
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
  "slug": "character-sum-parseval--b12cc74dff894536f939030c",
  "source": {
    "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12cc74dff894536f939030c1bd3a29a59aab5b2d5914e06286dd458dc171ab7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67cb7b57-044d-b086-5267-971815f2b031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem character_sum_parseval (B : Finset (ZMod p)) :
    (∑ x : ZMod p, ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) = (p : ℝ) * B.card := by
  have hpoint (x : ZMod p) : ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2 =
      ∑ a ∈ B, ∑ b ∈ B, (ZMod.stdAddChar (x * (a - b))).re := by
    simpa only [mul_comm] using character_sum_norm_sq B x
  have hswap : (∑ x : ZMod p, ∑ a ∈ B, ∑ b ∈ B,
      (ZMod.stdAddChar (x * (a - b))).re) =
      ∑ a ∈ B, ∑ b ∈ B, ∑ x : ZMod p, (ZMod.stdAddChar ((a - b) * x)).re := by
    calc
      _ = ∑ a ∈ B, ∑ x : ZMod p, ∑ b ∈ B,
          (ZMod.stdAddChar (x * (a - b))).re := Finset.sum_comm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro a _
        rw [Finset.sum_comm]
        simp only [mul_comm]
  simp_rw [hpoint]
  rw [hswap]
  simp_rw [character_orthogonality_re, sub_eq_zero]
  simp [mul_comm]

/-- The pointwise Fourier lower bound in source Lemma 3.6. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
