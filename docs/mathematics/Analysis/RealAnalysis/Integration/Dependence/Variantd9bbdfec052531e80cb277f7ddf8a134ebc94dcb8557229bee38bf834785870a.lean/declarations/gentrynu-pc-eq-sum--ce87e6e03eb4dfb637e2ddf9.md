# gentryNu_Pc_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c86fe1fe-92bd-0d5d-1760-0492365d8dcc",
  "kind": "lemma",
  "lexical_name": "gentryNu_Pc_eq_sum",
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
  "slug": "gentrynu-pc-eq-sum--ce87e6e03eb4dfb637e2ddf9",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce87e6e03eb4dfb637e2ddf99497e451f85d207ef471ecebad3f13703dff6037",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86fe1fe-92bd-0d5d-1760-0492365d8dcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gentryNu_Pc_eq_sum (hF : LocalHypsCore cϱ p Fn) (e : ℕ → ℂ) (k l : ℤ) :
    GentryNu (Pc p.X e) p Fn k l
      = ∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊, ((e N).re * Jc p Fn k l N + (e N).im * Js p Fn k l N) := by
  unfold GentryNu
  have h1 : (fun τ => Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * Pc p.X e τ)
      = fun τ => ∑ N ∈ Finset.Ioc 0 ⌊p.X⌋₊,
          ((e N).re * (Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l)
              * (Real.cos (τ * Real.log N) / (Real.pi * Real.sqrt N)))
            + (e N).im * (Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l)
              * (Real.sin (τ * Real.log N) / (Real.pi * Real.sqrt N)))) := by
    funext τ
    unfold Pc
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun N _ => ?_
    field_simp
  rw [h1, integral_finset_sum]
  · refine Finset.sum_congr rfl fun N _ => ?_
    have ic : Integrable (fun τ => Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l)
        * (Real.cos (τ * Real.log N) / (Real.pi * Real.sqrt N))) :=
      integrable_phiHat_mul_mul_bdd hF k l (g := fun τ =>
        Real.cos (τ * Real.log N) / (Real.pi * Real.sqrt N)) (by fun_prop)
        (fun x => abs_trig_div_le _ _ (fun u => Real.cos (u * Real.log N))
          (fun u => Real.abs_cos_le_one _))
    have is : Integrable (fun τ => Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l)
        * (Real.sin (τ * Real.log N) / (Real.pi * Real.sqrt N))) :=
      integrable_phiHat_mul_mul_bdd hF k l (g := fun τ =>
        Real.sin (τ * Real.log N) / (Real.pi * Real.sqrt N)) (by fun_prop)
        (fun x => abs_trig_div_le _ _ (fun u => Real.sin (u * Real.log N))
          (fun u => Real.abs_sin_le_one _))
    rw [integral_add (ic.const_mul _) (is.const_mul _), integral_const_mul, integral_const_mul]
    rfl
  · intro N _
    have ic := integrable_phiHat_mul_mul_bdd hF k l (g := fun τ =>
        Real.cos (τ * Real.log N) / (Real.pi * Real.sqrt N)) (by fun_prop)
        (fun x => abs_trig_div_le _ _ (fun u => Real.cos (u * Real.log N))
          (fun u => Real.abs_cos_le_one _))
    have is := integrable_phiHat_mul_mul_bdd hF k l (g := fun τ =>
        Real.sin (τ * Real.log N) / (Real.pi * Real.sqrt N)) (by fun_prop)
        (fun x => abs_trig_div_le _ _ (fun u => Real.sin (u * Real.log N))
          (fun u => Real.abs_sin_le_one _))
    exact (ic.const_mul _).add (is.const_mul _)

/-- **series transfer**: an entrywise expansion of the coefficients transfers to Q_{kl}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
