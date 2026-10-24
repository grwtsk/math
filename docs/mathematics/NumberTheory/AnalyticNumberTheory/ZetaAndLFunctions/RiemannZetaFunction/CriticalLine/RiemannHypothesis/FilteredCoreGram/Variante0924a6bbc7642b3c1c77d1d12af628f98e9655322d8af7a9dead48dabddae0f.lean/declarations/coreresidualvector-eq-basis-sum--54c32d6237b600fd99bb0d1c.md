# coreResidualVector_eq_basis_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afbc3047ae707389fec131ab8f876d714784b38e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0924a6bbc7642b3c1c77d1d12af628f98e9655322d8af7a9dead48dabddae0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4d19ac3-66e5-d55f-814d-cd0139218dfd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c11b7a1b-e51c-fec1-fcfc-81f5ce57f348",
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
  "slug": "coreresidualvector-eq-basis-sum--54c32d6237b600fd99bb0d1c",
  "source": {
    "blob": "afbc3047ae707389fec131ab8f876d714784b38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variante0924a6bbc7642b3c1c77d1d12af628f98e9655322d8af7a9dead48dabddae0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c32d6237b600fd99bb0d1ce64a42838fc786f9db6aa8f00ac7bdd0190a39ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variante0924a6bbc7642b3c1c77d1d12af628f98e9655322d8af7a9dead48dabddae0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c11b7a1b-e51c-fec1-fcfc-81f5ce57f348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–104.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variante0924a6bbc7642b3c1c77d1d12af628f98e9655322d8af7a9dead48dabddae0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variante0924a6bbc7642b3c1c77d1d12af628f98e9655322d8af7a9dead48dabddae0f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbc3047ae707389fec131ab8f876d714784b38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
