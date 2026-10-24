# coreResidualVector_eq_basis_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46d0b49c-373d-63d2-1123-d44fc602f91c",
  "kind": "theorem",
  "lexical_name": "coreResidualVector_eq_basis_sum",
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
  "slug": "coreresidualvector-eq-basis-sum--ea7f48fde26bfaef1e493e0e",
  "source": {
    "blob": "237ade4d325f4591b80ca0996b73723f44d6f7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7f48fde26bfaef1e493e0efd6eb2be54527f7171ad21136228ed3840c51cd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46d0b49c-373d-63d2-1123-d44fc602f91c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreResidualVector_eq_basis_sum (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    coreResidualVector X ε hX Y =
      ∑ d ∈ insert 0 (Finset.Icc 1 X),
        (if d = 0 then (1 : ℂ) else (dampedCoefficient X ε d : ℂ)) • coreBasisVector Y d := by
  classical
  let c : ℕ → ℂ := fun d => if d = 0 then 1 else (dampedCoefficient X ε d : ℂ)
  have hae (d : ℕ) : (c d • coreBasisVector Y d : FullH) =ᵐ[volume]
      fun u => c d * coreBasisFunction Y d u := by
    filter_upwards [Lp.coeFn_smul (c d) (coreBasisVector Y d), coreBasisVector_ae Y d]
      with u hs hb
    simpa only [Pi.smul_apply, RingHom.id_apply, smul_eq_mul, hb] using hs
  have hall : ∀ᵐ u ∂volume, ∀ d : ℕ,
      (c d • coreBasisVector Y d : FullH) u = c d * coreBasisFunction Y d u :=
    ae_all_iff.mpr hae
  apply Lp.ext
  filter_upwards [coreResidualVector_ae X ε hX Y,
    sum_coe_ae (insert 0 (Finset.Icc 1 X)) (fun d => c d • coreBasisVector Y d), hall]
    with u hc hs hall
  rw [hc, hs]
  simp_rw [hall]
  rw [Finset.sum_insert (by simp : 0 ∉ Finset.Icc 1 X)]
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [coreBasisFunction, indicator_of_mem hu, c, if_true, one_mul,
      logResidual, arithmeticResidual, mul_add, Finset.mul_sum]
    congr 1
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : d ≠ 0 := Nat.ne_of_gt (Finset.mem_Icc.mp hd).1
    simp only [hd0, if_false]
    ring
  · simp only [coreBasisFunction, indicator_of_notMem hu, mul_zero, Finset.sum_const_zero,
      add_zero]

/-- The filtered source core has its complete complex Gram quadratic: constant, linear,
diagonal, and off-diagonal terms are all retained with the original coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `237ade4d325f4591b80ca0996b73723f44d6f7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
