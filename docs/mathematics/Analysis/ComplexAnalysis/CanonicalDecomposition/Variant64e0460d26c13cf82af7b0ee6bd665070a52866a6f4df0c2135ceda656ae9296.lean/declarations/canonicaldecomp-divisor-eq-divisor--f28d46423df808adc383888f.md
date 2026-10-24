# CanonicalDecomp.divisor_eq_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77c5dcf8-6c4c-dae6-faf1-2f69dcfc01a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e911ceb2-85e4-337a-f307-dd7461794bde",
  "kind": "theorem",
  "lexical_name": "CanonicalDecomp.divisor_eq_divisor",
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
  "slug": "canonicaldecomp-divisor-eq-divisor--f28d46423df808adc383888f",
  "source": {
    "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 390,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28d46423df808adc383888f734a053b21be0956a4eb31b1cb64ade35adee8e9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e911ceb2-85e4-337a-f307-dd7461794bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CanonicalDecomp.divisor_eq_divisor {x : ℂ} (D : CanonicalDecomp f g R) (hR : 0 < R) :
    divisor g (closedBall (0 : ℂ) R) x = divisor f (sphere 0 R) x := by
  rcases lt_trichotomy ‖x‖ R with h|h|h
  · -- The case where `x` is contained in `ball 0 R`. There, the divisor of `g` vanishes because `g`
    -- does not have zeros or poles. The divisor of `f` vanishes because `x` is not contained in the
    -- sphere.
    have : x ∉ sphere (0 : ℂ) R := by aesop
    have := (D.meromorphicNFOn (mem_closedBall_zero_iff.mpr h.le)).meromorphicOrderAt_eq_zero_iff.2
      (D.ne_zero x (by aesop))
    rw [divisor_apply D.meromorphicNFOn.meromorphicOn (mem_closedBall_zero_iff.mpr h.le)]
    simp_all
  · -- The case where `x` is contained in `sphere 0 R`. There, the orders of `f` and `g` agree
    -- because the canonical factors are analytic and do not vanish.
    have η₁ : AnalyticAt ℂ (∏ᶠ u, canonicalFactor R u ^ (-(divisor f (ball 0 R)) u)) x := by
      refine analyticAt_finprod fun a ↦ ?_
      by_cases ha : a ∈ ball 0 R
      · exact (analyticOnNhd_canonicalFactor _ _ _ (by aesop)).zpow
          (canonicalFactor_ne_zero ha (by aesop) (by aesop))
      · simp_all only [mem_ball, dist_zero_right, not_lt,
          locallyFinsuppWithin.apply_eq_zero_of_notMem, neg_zero, zpow_zero]
        exact analyticAt_const
    have η₀ : f =ᶠ[𝓝[≠] x] (∏ᶠ u, canonicalFactor R u ^ (-(divisor f (ball 0 R)) u)) • g := by
      refine MeromorphicAt.eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin_preperfect
        (U := closedBall 0 R) (D.meromorphicOn x (by aesop))
        (η₁.meromorphicAt.smul (D.meromorphicNFOn.meromorphicOn x (by aesop))) (by aesop) ?_
        D.eventuallyEq
      rw [← closure_ball 0 hR.ne']
      exact isOpen_ball.perfect_closure.2
    have : meromorphicOrderAt (∏ᶠ u, canonicalFactor R u ^ (-(divisor f (ball 0 R)) u)) x = 0 := by
      refine η₁.meromorphicNFAt.meromorphicOrderAt_eq_zero_iff.2 (finprod_apply_ne_zero fun a ↦ ?_)
      by_cases ha : a ∈ ball 0 R
      · exact zpow_ne_zero _ (canonicalFactor_ne_zero ha (by aesop) (by aesop))
      · simp_all
    rw [divisor_apply (D.meromorphicOn.mono_set sphere_subset_closedBall) (by aesop),
      divisor_apply D.meromorphicNFOn.meromorphicOn (by aesop), meromorphicOrderAt_congr η₀,
      meromorphicOrderAt_smul η₁.meromorphicAt (D.meromorphicNFOn (by aesop)).meromorphicAt]
    simp_all
  · -- Trivial case: `x` is outside `closedBall 0 R`, so both divisors evaluate to zero.
    have : x ∉ sphere (0 : ℂ) R := by aesop
    simp_all

/-!
## Extended Canonical Decomposition

The extended canonical decomposition theorem shows that a meromorphic function `f` on a closed disk
is equal, up to modification over a discrete set, to a product of a non-vanishing analytic function,
canonical factors and meromorphic functions of the form `(x - const) ^ n` where `const` is on the
circumference of the disk.

To simplify notation and avoid repetition, we introduce a structure, `ECanonicalDecomp`, that
bundles the conclusions of the extended canonical decomposition theorem.
-/

/--
Given functions `f`, `g` and a real number `R`, the following convenience structure packs the
information relevant in the extended canonical decomposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
