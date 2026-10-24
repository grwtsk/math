# abs_centeredGreenWeightedPrefixError_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5088f00-bb15-dccb-010b-5ed8cb0bc512",
  "kind": "theorem",
  "lexical_name": "abs_centeredGreenWeightedPrefixError_le",
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
  "slug": "abs-centeredgreenweightedprefixerror-le--f3647b4214c2426b40a19003",
  "source": {
    "blob": "d1a41860d1f430240d6282428faaa2525fbe0042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3647b4214c2426b40a19003c3253986ebf39f29c9acb3701f5fc0c410e82421",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5088f00-bb15-dccb-010b-5ed8cb0bc512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_centeredGreenWeightedPrefixError_le
    {X m : ℕ} (hX : 1 ≤ X) (hmX : X ≤ m) (hm2 : m ≤ 2 * X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |centeredGreenWeightedPrefixError X m| ≤ A / (X : ℝ) := by
  rw [centeredGreenWeightedPrefixError_abel hX hmX]
  have hXm : |centeredGreenDyadicPrefixMangoldtError X m| ≤ A :=
    hA.2 m (Finset.mem_Icc.mpr ⟨hmX, hm2⟩)
  have hweights : ∀ r ∈ Finset.Icc (X + 1) (m - 1),
      0 ≤ 1 / (r : ℝ) - 1 / (r + 1 : ℝ) := by
    intro r hr
    have hrp : (0 : ℝ) < r := by
      have := (Finset.mem_Icc.mp hr).1
      positivity
    exact sub_nonneg.mpr (one_div_le_one_div_of_le hrp (by norm_num))
  have hmass :
      1 / (m : ℝ) +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          (1 / (r : ℝ) - 1 / (r + 1 : ℝ))
        ≤ 1 / (X : ℝ) := by
    by_cases hmEq : m = X
    · subst m
      simp
    · have hXm' : X < m := lt_of_le_of_ne hmX (Ne.symm hmEq)
      have htel :
          (∑ r ∈ Finset.Icc (X + 1) (m - 1),
            (1 / (r : ℝ) - 1 / (r + 1 : ℝ))) =
            1 / (X + 1 : ℝ) - 1 / (m : ℝ) := by
        -- elementary telescope
        simp only [Finset.sum_Icc_eq_sub]
        field_simp
        ring
      rw [htel]
      have hXp : (0 : ℝ) < X := by exact_mod_cast hX
      exact one_div_le_one_div_of_le hXp (by norm_num)
  calc
    _ ≤ |centeredGreenDyadicPrefixMangoldtError X m / (m : ℝ)| +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          |centeredGreenDyadicPrefixMangoldtError X r *
            (1 / (r : ℝ) - 1 / (r + 1 : ℝ))| := abs_add_le _ _
    _ ≤ A / (m : ℝ) +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          A * (1 / (r : ℝ) - 1 / (r + 1 : ℝ)) := by
      gcongr
      · exact div_le_div_of_nonneg_right hXm (by positivity)
      · intro r hr
        rw [abs_mul, abs_of_nonneg (hweights r hr)]
        exact mul_le_mul_of_nonneg_right
          (hA.2 r (by
            have hi := Finset.mem_Icc.mp hr
            exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩))
          (hweights r hr)
    _ ≤ A / (X : ℝ) := by
      rw [Finset.mul_sum]
      have hA0 := hA.1
      nlinarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a41860d1f430240d6282428faaa2525fbe0042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
