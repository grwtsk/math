# primitiveWeilLaplace_vertical_pow_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e880c553-1a1b-3c2a-108f-1f393b50d723",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_vertical_pow_bound",
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
  "slug": "primitiveweillaplace-vertical-pow-bound--98b3b683fea650180122d79d",
  "source": {
    "blob": "afb1bf513109ce8d2a1ab48385f689d5d742dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b3b683fea650180122d79d6bdac26a34e102335c89f4edb75f06ec2131ef85",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e880c553-1a1b-3c2a-108f-1f393b50d723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_vertical_pow_bound
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (k : ℕ) :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
      |t| ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C := by
  obtain ⟨C, hC, hbound⟩ :=
    primitiveWeilLaplace_vertical_normalized_pow_bound g sigma k
  have hscalePos : 0 < 2 * Real.pi := mul_pos (by norm_num) Real.pi_pos
  refine ⟨(2 * Real.pi) ^ k * C, mul_pos (pow_pos hscalePos k) hC, fun t ↦ ?_⟩
  have hscale :
      |t| = (2 * Real.pi) * ‖(-t / (2 * Real.pi) : ℝ)‖ := by
    rw [Real.norm_eq_abs, abs_div, abs_neg, abs_of_pos hscalePos]
    field_simp [ne_of_gt hscalePos]
  rw [hscale, mul_pow, mul_assoc]
  exact mul_le_mul_of_nonneg_left (hbound t) (pow_nonneg hscalePos.le k)

/-- Conventional rapid-decay estimate at a fixed real part. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1bf513109ce8d2a1ab48385f689d5d742dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
