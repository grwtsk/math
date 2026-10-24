# positive_of_differentiable_of_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61076a05-a095-40f5-8001-0b9f903e99fe",
  "kind": "lemma",
  "lexical_name": "positive_of_differentiable_of_eqOn",
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
  "slug": "positive-of-differentiable-of-eqon--f4e65f45fd6a9882dfdca8a5",
  "source": {
    "blob": "56f3881eafa108674795a0b6eec64d9353f92372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e65f45fd6a9882dfdca8a517fca9a9da288396e2afefcee8cd6ddbf185c093",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61076a05-a095-40f5-8001-0b9f903e99fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma positive_of_differentiable_of_eqOn {a : ℕ → ℂ} (ha₀ : 0 ≤ a) (ha₁ : 0 < a 1) {f : ℂ → ℂ}
    (hf : Differentiable ℂ f) {x : ℝ} (hx : abscissaOfAbsConv a ≤ x)
    (hf' : {s | x < s.re}.EqOn f (LSeries a)) (y : ℝ) :
    0 < f y := by
  have hxy : x < max x y + 1 := (le_max_left x y).trans_lt (lt_add_one _)
  have hxy' : abscissaOfAbsConv a < max x y + 1 := hx.trans_lt <| mod_cast hxy
  have hys : (max x y + 1 : ℂ) ∈ {s | x < s.re} := by
    simp only [Set.mem_setOf_eq, add_re, ofReal_re, one_re, hxy]
  have hfx : 0 < f (max x y + 1) := by
    simpa only [hf' hys, ofReal_add, ofReal_one] using positive ha₀ ha₁ hxy'
  refine (hfx.trans_le <| hf.apply_le_of_iteratedDeriv_alternating (fun n _ ↦ ?_) ?_)
  · have hs : IsOpen {s : ℂ | x < s.re} := continuous_re.isOpen_preimage _ isOpen_Ioi
    simpa only [hf'.iteratedDeriv_of_isOpen hs n hys, ofReal_add, ofReal_one] using
      iteratedDeriv_alternating ha₀ hxy' n
  · exact_mod_cast (le_max_right x y).trans (lt_add_one _).le

end LSeries

namespace ArithmeticFunction

/-- If all values of a `ℂ`-valued arithmetic function are nonnegative reals and `x` is a
real number in the domain of absolute convergence, then the `n`th iterated derivative
of the associated L-series is nonnegative real when `n` is even and nonpositive real
when `n` is odd. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f3881eafa108674795a0b6eec64d9353f92372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
