# ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9485fdfd-3724-2ef6-06c3-c7129aff1f3e",
  "kind": "lemma",
  "lexical_name": "ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt",
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
  "slug": "ecanonicaldecomp-eq-smul-meromorphictrailingcoeffat--6ba40fc0863b3e82a244225b",
  "source": {
    "blob": "363bc7fdb88c837c745e0b26a1cdb8c8bec3923d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 534,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba40fc0863b3e82a244225b26893e1db3a801d3c56735cd9dd671bfd88e54d7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9485fdfd-3724-2ef6-06c3-c7129aff1f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt
    {f h : ℂ → E} (D : ECanonicalDecomp f h R) (hw : w ∈ closedBall 0 R) (hR : 0 < R) :
    h w
      = ((∏ᶠ i, meromorphicTrailingCoeffAt (canonicalFactor R i) w ^ (divisor f (ball 0 R) i))
          * (∏ᶠ i, meromorphicTrailingCoeffAt (· - i) w ^ (-divisor f (sphere 0 R)) i))
          • meromorphicTrailingCoeffAt f w := by
  -- Finiteness properties and side results used throughout the proof
  let B₀R := ball (0 : ℂ) R
  let S₀R := sphere (0 : ℂ) R
  lift (divisor f S₀R).support to Finset ℂ using divisor_sphere_support_finite with t₁ ht₁
  lift (divisor f B₀R).support to Finset ℂ using D.meromorphicOn.divisor_ball_support_finite
    with t₂ ht₂
  have := (D.analyticOnNhd w hw).meromorphicAt
  rw [Eq.comm]
  -- Proof body: Substitute `f` using `h₁f` and compute
  calc ((∏ᶠ (i : ℂ), meromorphicTrailingCoeffAt (canonicalFactor R i) w ^ (divisor f B₀R) i)
      * ∏ᶠ (i : ℂ), meromorphicTrailingCoeffAt (· - i) w ^ (-divisor f S₀R) i)
      • meromorphicTrailingCoeffAt f w
    _ = ((∏ᶠ (i : ℂ), meromorphicTrailingCoeffAt (canonicalFactor R i) w ^ (divisor f B₀R) i)
      * ∏ᶠ (i : ℂ), meromorphicTrailingCoeffAt (· - i) w ^ (-divisor f S₀R) i)
      • meromorphicTrailingCoeffAt (((∏ᶠ (u : ℂ), canonicalFactor R u ^ (-(divisor f B₀R) u))
        * ∏ᶠ (v : ℂ), (· - v) ^ (divisor f S₀R) v) • h) w := by
      rw [meromorphicTrailingCoeffAt_congr_nhdsNE
        ((D.meromorphicOn w hw).eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin_preperfect
        (by fun_prop) hw ?η₁ D.eventuallyEq)]
      case η₁ =>
        rw [← closure_ball _ hR.ne']
        exact isOpen_ball.perfect_closure.2
    _ = ((∏ i ∈ t₂, meromorphicTrailingCoeffAt (canonicalFactor R i) w ^ (divisor f B₀R) i)
      * ∏ i ∈ t₁, meromorphicTrailingCoeffAt (· - i) w ^ (-divisor f S₀R) i)
      • meromorphicTrailingCoeffAt (((∏ i ∈ t₂, canonicalFactor R i ^ (-(divisor f B₀R) i))
        * ∏ i ∈ t₁, (· - i) ^ (divisor f S₀R) i) • h) w := by
      rw [finprod_eq_prod_of_mulSupport_subset (s := t₂) _ _,
        finprod_eq_prod_of_mulSupport_subset (s := t₁) _ _,
        finprod_eq_prod_of_mulSupport_subset (s := t₂) _ _,
        finprod_eq_prod_of_mulSupport_subset (s := t₁) _ _]
      <;> simpa [ht₁, ht₂] using mulSupport_pow_subset_support ..
    _ = ((∏ i ∈ t₂, meromorphicTrailingCoeffAt (canonicalFactor R i) w ^ (divisor f B₀R) i)
      * ∏ i ∈ t₁, meromorphicTrailingCoeffAt (· - i) w ^ (-divisor f S₀R) i)
      • ((∏ n ∈ t₂, meromorphicTrailingCoeffAt (canonicalFactor R n ^ (-(divisor f B₀R) n)) w)
        * ∏ n ∈ t₁, meromorphicTrailingCoeffAt ((· - n) ^ (divisor f S₀R) n) w)
      • h w := by
      rw [MeromorphicAt.meromorphicTrailingCoeffAt_smul (by fun_prop)
        (D.analyticOnNhd w hw).meromorphicAt,
        MeromorphicAt.meromorphicTrailingCoeffAt_mul (by fun_prop) (by fun_prop),
        meromorphicTrailingCoeffAt_prod (by fun_prop),
        meromorphicTrailingCoeffAt_prod (by fun_prop),
        (D.analyticOnNhd w hw).meromorphicTrailingCoeffAt_of_ne_zero (D.ne_zero w hw)]
    _ = h w := by
      rw [smul_smul, mul_mul_mul_comm, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib,
        Finset.prod_eq_one ?η₁, Finset.prod_eq_one ?η₂, mul_one, one_smul]
      case η₁ =>
        intro x hx
        rw [MeromorphicAt.meromorphicTrailingCoeffAt_zpow (by fun_prop), ← zpow_add₀,
          add_neg_cancel, zpow_zero]
        apply MeromorphicAt.meromorphicTrailingCoeffAt_ne_zero (by fun_prop)
          (meromorphicOrderAt_canonicalFactor_ne_top x hR)
      case η₂ =>
        intro x hx
        rw [MeromorphicAt.meromorphicTrailingCoeffAt_zpow (by fun_prop), ← zpow_add₀,
          locallyFinsuppWithin.coe_neg, Pi.neg_apply, neg_add_cancel, zpow_zero]
        rw [meromorphicTrailingCoeffAt_id_sub_const]
        grind

/--
Companion lemma to `MeromorphicOn.exists_ecanonicalDecomp`: In the setting of the extended canonical
decomposition, write the function `h` entirely in terms of `f`, under the assumption that `f` has
order zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363bc7fdb88c837c745e0b26a1cdb8c8bec3923d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
