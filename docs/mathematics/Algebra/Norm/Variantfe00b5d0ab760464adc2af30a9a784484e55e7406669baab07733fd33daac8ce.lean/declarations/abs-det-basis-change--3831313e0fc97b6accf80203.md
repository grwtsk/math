# abs_det_basis_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "806516151697bddcab291e74eb48e95d8942902a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76366e72-f00a-9c18-d6d3-4f66e019ce50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:414cf8cc-4076-56fc-2173-7f58bf336126",
  "kind": "theorem",
  "lexical_name": "abs_det_basis_change",
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
  "slug": "abs-det-basis-change--3831313e0fc97b6accf80203",
  "source": {
    "blob": "806516151697bddcab291e74eb48e95d8942902a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3831313e0fc97b6accf802032cf2f7afefb6fedf22d4c24efae6c2cd0f15e124",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:414cf8cc-4076-56fc-2173-7f58bf336126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_det_basis_change [NoZeroDivisors K] {ι : Type*} [Fintype ι]
    [DecidableEq ι] (b : Basis ι ℤ R) (I : FractionalIdeal R⁰ K) (bI : Basis ι ℤ I) :
    |(b.localizationLocalization ℚ ℤ⁰ K).det ((↑) ∘ bI)| = absNorm I := by
  have := IsFractionRing.nontrivial R K
  let b₀ : Basis ι ℚ K := b.localizationLocalization ℚ ℤ⁰ K
  let bI.num : Basis ι ℤ I.num := bI.map
      ((equivNum (nonZeroDivisors.coe_ne_zero _)).restrictScalars ℤ)
  rw [absNorm_eq, ← Ideal.natAbs_det_basis_change b I.num bI.num, Int.cast_natAbs, Int.cast_abs,
    Int.cast_abs, Basis.det_apply, Basis.det_apply]
  change _ = |algebraMap ℤ ℚ _| / _
  rw [RingHom.map_det, show RingHom.mapMatrix (algebraMap ℤ ℚ) (b.toMatrix ((↑) ∘ bI.num)) =
      b₀.toMatrix ((algebraMap R K (den I : R)) • ((↑) ∘ bI)) by
    ext : 2
    simp_rw [bI.num, RingHom.mapMatrix_apply, Matrix.map_apply, Basis.toMatrix_apply,
      ← Basis.localizationLocalization_repr_algebraMap ℚ ℤ⁰ K, Function.comp_apply,
      Basis.map_apply, LinearEquiv.restrictScalars_apply, equivNum_apply, Submonoid.smul_def,
      Algebra.smul_def]
    rfl]
  rw [Basis.toMatrix_smul, Matrix.det_mul, abs_mul, ← Algebra.norm_eq_matrix_det,
    Algebra.norm_localization ℤ ℤ⁰, show (Algebra.norm ℤ (den I : R) : ℚ) =
    algebraMap ℤ ℚ (Algebra.norm ℤ (den I : R)) by rfl, mul_div_assoc, mul_div_cancel₀ _ (by
    rw [ne_eq, abs_eq_zero, IsFractionRing.to_map_eq_zero_iff, Algebra.norm_eq_zero_iff_of_basis b]
    exact nonZeroDivisors.coe_ne_zero _)]

variable (R) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806516151697bddcab291e74eb48e95d8942902a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
