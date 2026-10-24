# mean_union_exposure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2bc39a5-479f-cc5e-a151-fc037e5460ad",
  "kind": "theorem",
  "lexical_name": "mean_union_exposure",
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
  "slug": "mean-union-exposure--c58f463963d4524e904610f7",
  "source": {
    "blob": "9f892475421f04d20782b1e111d51787f8e16876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 228,
    "path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c58f463963d4524e904610f70678623302c36dd2c5c0323c16ba991911540690",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2bc39a5-479f-cc5e-a151-fc037e5460ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_union_exposure (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (f : Finset α → ℝ) :
    (∑ R ∈ S.powersetCard (a + b), f R) /
        ((S.powersetCard (a + b)).card : ℝ) =
      (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  simp only [Finset.card_powersetCard]
  have hinner :
      (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          ((S \ A).card.choose b : ℝ)) =
        (∑ A ∈ S.powersetCard a,
          ∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
            ((S.card - a).choose b : ℝ) := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro A hA
    obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
    rw [Finset.card_sdiff_of_subset hAS, hAc]
  have hchooseNat :
      S.card.choose (a + b) * (a + b).choose a =
        S.card.choose a * (S.card - a).choose b := by
    simpa using
      (Nat.choose_mul (n := S.card) (k := a + b) (s := a)
        (by omega))
  have hchoose :
      (S.card.choose (a + b) : ℝ) * ((a + b).choose a : ℝ) =
        (S.card.choose a : ℝ) * ((S.card - a).choose b : ℝ) := by
    exact_mod_cast hchooseNat
  have hden :
      ((S.card - a).choose b : ℝ) * (S.card.choose a : ℝ) =
        (S.card.choose (a + b) : ℝ) * ((a + b).choose a : ℝ) := by
    calc
      _ = (S.card.choose a : ℝ) * ((S.card - a).choose b : ℝ) :=
        mul_comm _ _
      _ = _ := hchoose.symm
  have hT : (S.card.choose (a + b) : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.choose_pos hab).ne'
  have hF : ((a + b).choose a : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.choose_pos (by omega : a ≤ a + b)).ne'
  rw [hinner, sum_exposure_union_real, div_div, hden]
  field_simp [hT, hF]

/-- Conditional mean bounds average without any additional independence
assumption. The bound may be any real number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f892475421f04d20782b1e111d51787f8e16876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
