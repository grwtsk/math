# iteratedDeriv_one_add_sq_rpow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4936256b-5242-1671-dead-31b9f65ad27f",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_one_add_sq_rpow_zero",
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
  "slug": "iteratedderiv-one-add-sq-rpow-zero--d98945dcc55fa2e97dedb45e",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 616,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d98945dcc55fa2e97dedb45e90c7390b90eceb506422e41b44d7a5b0df5ba10c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4936256b-5242-1671-dead-31b9f65ad27f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_one_add_sq_rpow_zero (a : ℝ) (n : ℕ) :
    iteratedDeriv n (fun x : ℝ => (1 + x ^ 2) ^ a) 0 =
      (Nat.factorial n : ℝ) * (if n % 2 = 0 then Ring.choose a (n / 2) else 0) := by
  by_cases hparity : n % 2 = 0
  case neg =>
    -- Odd n: the function is even, so odd derivatives at 0 vanish
    have hodd : n % 2 = 1 := by omega
    have heven_func : ∀ x : ℝ, (1 + (-x) ^ 2) ^ a = (1 + x ^ 2) ^ a := by
      intro x; congr 1; ring
    rw [iteratedDeriv_even_odd_zero heven_func hodd]
    simp [hparity]
  case pos =>
    -- Even n = 2k: use power series composition
    -- (1 + x²)^a = (1 + x)^a composed with x², so Taylor coeff at n is Ring.choose a (n/2)
    simp only [hparity, ↓reduceIte]
    -- Use that f has power series (binomialSeries ℝ a).comp sqSeries
    -- First, establish that (1+x)^a has binomial series at 0
    have h_binom : HasFPowerSeriesAt (fun y : ℝ => (1 + y) ^ a) (binomialSeries ℝ a) 0 :=
      Real.one_add_rpow_hasFPowerSeriesAt_zero
    -- sqSeries gives x² its power series at 0
    have hsq : HasFPowerSeriesAt (fun x : ℝ => x ^ 2) sqSeries 0 := sqSeries_hasFPowerSeriesAt_zero
    -- At x = 0, x² = 0, so we can use composition
    have h_comp : HasFPowerSeriesAt ((fun y : ℝ => (1 + y) ^ a) ∘ (fun x : ℝ => x ^ 2))
        ((binomialSeries ℝ a).comp sqSeries) 0 := by
      apply HasFPowerSeriesAt.comp
      · convert h_binom using 1; simp
      · exact hsq
    -- Simplify the composed function
    have h_comp' : HasFPowerSeriesAt (fun x : ℝ => (1 + x ^ 2) ^ a)
        ((binomialSeries ℝ a).comp sqSeries) 0 := by
      convert h_comp using 1
    -- The canonical Taylor series has coefficients iteratedDeriv k f 0 / k!
    have h_taylor : HasFPowerSeriesAt (fun x : ℝ => (1 + x ^ 2) ^ a)
        (FormalMultilinearSeries.ofScalars ℝ
          (fun k => iteratedDeriv k (fun x : ℝ => (1 + x ^ 2) ^ a) 0 / (k.factorial : ℝ))) 0 :=
      h_comp'.analyticAt.hasFPowerSeriesAt
    -- Uniqueness: comp series = Taylor series
    have h_eq := HasFPowerSeriesAt.eq_formalMultilinearSeries h_comp' h_taylor
    -- Extract coefficient at n
    have hcoeff := congrArg (fun p => p.coeff n) h_eq
    -- binomialSeries ℝ a = ofScalars ℝ (fun k => Ring.choose a k)
    simp only [binomialSeries] at hcoeff
    -- Use coeff_comp_sq_ofScalars to simplify
    rw [coeff_comp_sq_ofScalars] at hcoeff
    simp only [hparity, ↓reduceIte, FormalMultilinearSeries.coeff_ofScalars] at hcoeff
    -- Rearrange to get the desired form
    have hfact : (n.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
    field_simp [hfact] at hcoeff
    linarith

/-- The sinhTaylorCoeffs match the Mathlib Taylor coefficients for sinh at 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
