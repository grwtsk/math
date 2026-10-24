# powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef73565425910c856470080c1333f797878833a0bdb2e30d17f5bce77b7c54ad",
  "kind": "def",
  "lexical_name": "powers",
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
  "slug": "powers--98b0a61f6e4ac7f8754a5cf8",
  "source": {
    "blob": "850ccd987861169c5918b42f459bb318355f8f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1794,
    "line": 1762,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98b0a61f6e4ac7f8754a5cf81ca0f3994cf164820a313dcf2442116d6fddaef6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef73565425910c856470080c1333f797878833a0bdb2e30d17f5bce77b7c54ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1762–1794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powers (x : HahnSeries Γ R) (hx : 0 < addVal Γ R x) : SummableFamily Γ R ℕ where
  toFun n := x ^ n
  isPwo_iUnion_support' := isPwo_iUnion_support_powers hx
  finite_co_support' g := by
    have hpwo := isPwo_iUnion_support_powers hx
    by_cases hg : g ∈ ⋃ n : ℕ, { g | (x ^ n).coeff g ≠ 0 }
    swap; · exact Set.finite_empty.subset fun n hn => hg (Set.mem_iUnion.2 ⟨n, hn⟩)
    apply hpwo.isWf.induction hg
    intro y ys hy
    refine'
      ((((addAntidiagonal x.isPwo_support hpwo y).finite_toSet.biUnion fun ij hij =>
                    hy ij.snd _ _).image
                Nat.succ).union
            (Set.finite_singleton 0)).subset
        _
    · exact (mem_addAntidiagonal.1 (mem_coe.1 hij)).2.1
    · obtain ⟨hi, _, rfl⟩ := mem_addAntidiagonal.1 (mem_coe.1 hij)
      rw [← zero_add ij.snd, ← add_assoc, add_zero]
      exact
        add_lt_add_right (WithTop.coe_lt_coe.1 (lt_of_lt_of_le hx (addVal_le_of_coeff_ne_zero hi)))
          _
    · rintro (_ | n) hn
      · exact Set.mem_union_right _ (Set.mem_singleton 0)
      · obtain ⟨i, j, hi, hj, rfl⟩ := support_mul_subset_add_support hn
        refine' Set.mem_union_left _ ⟨n, Set.mem_iUnion.2 ⟨⟨i, j⟩, Set.mem_iUnion.2 ⟨_, hj⟩⟩, rfl⟩
        simp only [and_true_iff, Set.mem_iUnion, mem_addAntidiagonal, mem_coe, eq_self_iff_true,
          Ne.def, mem_support, Set.mem_setOf_eq]
        exact ⟨hi, n, hj⟩
#align hahn_series.summable_family.powers HahnSeries.SummableFamily.powers

variable {x : HahnSeries Γ R} (hx : 0 < addVal Γ R x)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean#L1762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ccd987861169c5918b42f459bb318355f8f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
