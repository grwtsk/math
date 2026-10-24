# isBigO_sub_exp_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b91a1e18-d93f-77a5-291f-d0c64ca717fe",
  "kind": "theorem",
  "lexical_name": "isBigO_sub_exp_rpow",
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
  "slug": "isbigo-sub-exp-rpow--817c9cf69ce7bbf45b3f9854",
  "source": {
    "blob": "7f32921e752cd12d6e087e8468d3fe443cf558bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 92,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:817c9cf69ce7bbf45b3f985441bb2dbc6891b7d25769189b181cb4fd5faf3b24",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b91a1e18-d93f-77a5-291f-d0c64ca717fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_sub_exp_rpow {a : ℝ} {f g : ℂ → E} {l : Filter ℂ}
    (hBf : ∃ c < a, ∃ B, f =O[comap Complex.abs atTop ⊓ l] fun z => expR (B * abs z ^ c))
    (hBg : ∃ c < a, ∃ B, g =O[comap Complex.abs atTop ⊓ l] fun z => expR (B * abs z ^ c)) :
    ∃ c < a, ∃ B, (f - g) =O[comap Complex.abs atTop ⊓ l] fun z => expR (B * abs z ^ c) := by
  have : ∀ {c₁ c₂ B₁ B₂ : ℝ}, c₁ ≤ c₂ → 0 ≤ B₂ → B₁ ≤ B₂ →
      (fun z : ℂ => expR (B₁ * abs z ^ c₁)) =O[comap Complex.abs atTop ⊓ l]
        fun z => expR (B₂ * abs z ^ c₂) := fun hc hB₀ hB ↦ .of_bound 1 <| by
    have : ∀ᶠ z : ℂ in comap Complex.abs atTop ⊓ l, 1 ≤ abs z :=
      ((eventually_ge_atTop 1).comap _).filter_mono inf_le_left
    refine this.mono fun z hz => ?_
    rw [one_mul, Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp, Real.abs_exp, Real.exp_le_exp]
    exact mul_le_mul hB (Real.rpow_le_rpow_of_exponent_le hz hc)
      (Real.rpow_nonneg_of_nonneg (Complex.abs.nonneg _) _) hB₀
  rcases hBf with ⟨cf, hcf, Bf, hOf⟩; rcases hBg with ⟨cg, hcg, Bg, hOg⟩
  refine' ⟨max cf cg, max_lt hcf hcg, max 0 (max Bf Bg), _⟩
  refine' (hOf.trans <| this _ _ _).sub (hOg.trans <| this _ _ _)
  exacts [le_max_left _ _, le_max_left _ _, (le_max_left _ _).trans (le_max_right _ _),
    le_max_right _ _, le_max_left _ _, (le_max_right _ _).trans (le_max_right _ _)]
set_option linter.uppercaseLean3 false in
#align phragmen_lindelof.is_O_sub_exp_rpow PhragmenLindelof.isBigO_sub_exp_rpow

variable [NormedSpace ℂ E] {a b C : ℝ} {f g : ℂ → E} {z : ℂ}

/-!
### Phragmen-Lindelöf principle in a horizontal strip
-/

/-- **Phragmen-Lindelöf principle** in a strip `U = {z : ℂ | a < im z < b}`.
Let `f : ℂ → E` be a function such that

* `f` is differentiable on `U` and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * exp(c * |re z|))` on `U` for some `c < π / (b - a)`;
* `‖f z‖` is bounded from above by a constant `C` on the boundary of `U`.

Then `‖f z‖` is bounded by the same constant on the closed strip
`{z : ℂ | a ≤ im z ≤ b}`. Moreover, it suffices to verify the second assumption
only for sufficiently large values of `|re z|`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f32921e752cd12d6e087e8468d3fe443cf558bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
