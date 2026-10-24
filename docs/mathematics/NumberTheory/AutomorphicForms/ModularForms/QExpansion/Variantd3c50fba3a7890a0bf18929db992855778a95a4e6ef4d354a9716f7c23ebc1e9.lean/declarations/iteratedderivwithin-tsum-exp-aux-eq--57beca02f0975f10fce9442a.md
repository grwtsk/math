# iteratedDerivWithin_tsum_exp_aux_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ff2b6e-c72f-8add-2712-000dab7152e0",
  "kind": "lemma",
  "lexical_name": "iteratedDerivWithin_tsum_exp_aux_eq",
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
  "slug": "iteratedderivwithin-tsum-exp-aux-eq--57beca02f0975f10fce9442a",
  "source": {
    "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57beca02f0975f10fce9442ac426858d038cca561c2104bf115d1f594253574b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ff2b6e-c72f-8add-2712-000dab7152e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDerivWithin_tsum_exp_aux_eq {k : ℕ} (hk : 1 ≤ k) (z : ℍ) :
    iteratedDerivWithin k (fun z ↦ ((π * I) -
    (2 * π * I) * ∑' n : ℕ, cexp (2 * π * I * z) ^ n)) ℍₒ z =
    -(2 * π * I) ^ (k + 1) * ∑' n : ℕ, n ^ k * cexp (2 * π * I * z) ^ n := by
  have : iteratedDerivWithin k (fun z ↦ ((π * I) -
    (2 * π * I) * ∑' n : ℕ, cexp (2 * π * I * z) ^ n)) ℍₒ z =
    -(2 * π * I) * ∑' n : ℕ, iteratedDerivWithin k (fun s : ℂ ↦ cexp (2 * π * I * s) ^ n) ℍₒ z := by
    rw [iteratedDerivWithin_const_sub hk, iteratedDerivWithin_fun_neg,
      iteratedDerivWithin_const_mul (by simpa using z.2) (isOpen_upperHalfPlaneSet.uniqueDiffOn)]
    · simp only [iteratedDerivWithin_tsum_cexp_eq, neg_mul]
    · exact (contDiffOn_tsum_cexp k).contDiffWithinAt (by simpa using z.2)
  have h : -(2 * π * I * (2 * π * I) ^ k) * ∑' (n : ℕ), n ^ k * cexp (2 * π * I * z) ^ n =
        -(2 * π * I) * ∑' n : ℕ, (2 * π * I * n) ^ k * cexp (2 * π * I * z) ^ n := by
    simp_rw [← tsum_mul_left]
    congr
    ext y
    ring
  simp only [this, neg_mul, pow_succ', h, neg_inj, mul_eq_mul_left_iff, mul_eq_zero,
    OfNat.ofNat_ne_zero, ofReal_eq_zero, Real.pi_ne_zero, or_self, I_ne_zero, or_false]
  congr
  ext n
  have := exp_nsmul' (p := 1) (a := 2 * π * I) (n := n)
  simp_rw [div_one] at this
  simpa [this, UpperHalfPlane.coe] using
    iteratedDerivWithin_cexp_aux k n 1 isOpen_upperHalfPlaneSet z.2

/-- This is one key identity relating infinite series to q-expansions which shows that
`∑' n, 1 / (z + n) ^ (k + 1) = ((-2 π I) ^ (k + 1) / k !) * ∑' n, n ^ k q ^n` where
`q = cexp (2 π I z)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88cc488f2db65abe80b44588cd5be219a228526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
