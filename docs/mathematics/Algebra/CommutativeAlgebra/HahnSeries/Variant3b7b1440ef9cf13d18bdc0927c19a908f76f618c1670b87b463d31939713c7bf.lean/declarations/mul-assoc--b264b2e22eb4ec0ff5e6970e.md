# mul_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c149a335-f3d0-32bb-4147-8a9dd18a479f",
  "kind": "theorem",
  "lexical_name": "mul_assoc'",
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
  "slug": "mul-assoc--b264b2e22eb4ec0ff5e6970e",
  "source": {
    "blob": "850ccd987861169c5918b42f459bb318355f8f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 788,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b264b2e22eb4ec0ff5e6970ea5d6d39140e40e34a6f0656cbf19bc55dbbb7994",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c149a335-f3d0-32bb-4147-8a9dd18a479f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_assoc' [NonUnitalSemiring R] (x y z : HahnSeries Γ R) :
    x * y * z = x * (y * z) := by
  ext b
  rw [mul_coeff_left' (x.isPwo_support.add y.isPwo_support) support_mul_subset_add_support,
    mul_coeff_right' (y.isPwo_support.add z.isPwo_support) support_mul_subset_add_support]
  simp only [mul_coeff, add_coeff, sum_mul, mul_sum, sum_sigma']
  refine' sum_bij_ne_zero (fun a _ _ => ⟨⟨a.2.1, a.2.2 + a.1.2⟩, ⟨a.2.2, a.1.2⟩⟩) _ _ _ _
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ H1 H2
    simp only [and_true_iff, Set.image2_add, eq_self_iff_true, mem_addAntidiagonal, Ne.def,
      Set.image_prod, mem_sigma, Set.mem_setOf_eq] at H1 H2 ⊢
    obtain ⟨⟨H3, nz, rfl⟩, nx, ny, rfl⟩ := H1
    exact ⟨⟨nx, Set.add_mem_add ny nz, (add_assoc _ _ _).symm⟩, ny, nz⟩
  · rintro ⟨⟨i1, j1⟩, k1, l1⟩ ⟨⟨i2, j2⟩, k2, l2⟩ H1 H2 H3 H4 H5
    simp only [Set.image2_add, Prod.mk.inj_iff, mem_addAntidiagonal, Ne.def, Set.image_prod,
      mem_sigma, Set.mem_setOf_eq, heq_iff_eq] at H1 H3 H5
    obtain (⟨⟨rfl, _⟩, rfl, rfl⟩ : (k1 = k2 ∧ l1 + j1 = l2 + j2) ∧ l1 = l2 ∧ j1 = j2) :=
      by simpa using H5
    simp only [and_true_iff, Prod.mk.inj_iff, eq_self_iff_true, heq_iff_eq, ← H1.2.2.2, ← H3.2.2.2]
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ H1 H2
    simp only [exists_prop, Set.image2_add, Prod.mk.inj_iff, mem_addAntidiagonal, Sigma.exists,
      Ne.def, Set.image_prod, mem_sigma, Set.mem_setOf_eq, heq_iff_eq, Prod.exists] at H1 H2 ⊢
    obtain ⟨⟨nx, H, rfl⟩, ny, nz, rfl⟩ := H1
    exact
      ⟨i + k, l, i, k, ⟨⟨Set.add_mem_add nx ny, nz, add_assoc _ _ _⟩ , nx, ny, rfl⟩,
        fun h => H2 <| by rw [←h, mul_assoc], rfl⟩
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ _ _
    simp [mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ccd987861169c5918b42f459bb318355f8f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
