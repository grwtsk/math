# summable_schlomilch_iff_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:530650b1-eff0-d831-5b42-c1e20490f426",
  "kind": "theorem",
  "lexical_name": "summable_schlomilch_iff_of_nonneg",
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
  "slug": "summable-schlomilch-iff-of-nonneg--f09c00e0814f79013211b066",
  "source": {
    "blob": "e440a9a003c752da648c95b78f5e12df9cfcebda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09c00e0814f79013211b066995be45481b3871d00b3f96a44025a4787c0d9ca",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530650b1-eff0-d831-5b42-c1e20490f426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_schlomilch_iff_of_nonneg {C : ℕ} {u : ℕ → ℕ} {f : ℕ → ℝ} (h_nonneg : ∀ n, 0 ≤ f n)
    (hf : ∀ ⦃m n⦄, 0 < m → m ≤ n → f n ≤ f m) (h_pos : ∀ n, 0 < u n)
    (hu_strict : StrictMono u) (hC_nonzero : C ≠ 0) (h_succ_diff : SuccDiffBounded C u) :
    (Summable fun k : ℕ => (u (k + 1) - (u k : ℝ)) * f (u k)) ↔ Summable f := by
  lift f to ℕ → ℝ≥0 using h_nonneg
  simp only [NNReal.coe_le_coe] at *
  have (k : ℕ) : (u (k + 1) - (u k : ℝ)) = ((u (k + 1) : ℝ≥0) - (u k : ℝ≥0) : ℝ≥0) := by
    have := Nat.cast_le (α := ℝ≥0).mpr <| (hu_strict k.lt_succ_self).le
    simp [NNReal.coe_sub this]
  simp_rw [this]
  exact_mod_cast NNReal.summable_schlomilch_iff hf h_pos hu_strict hC_nonzero h_succ_diff

/-- Cauchy condensation test for antitone series of nonnegative real numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e440a9a003c752da648c95b78f5e12df9cfcebda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
