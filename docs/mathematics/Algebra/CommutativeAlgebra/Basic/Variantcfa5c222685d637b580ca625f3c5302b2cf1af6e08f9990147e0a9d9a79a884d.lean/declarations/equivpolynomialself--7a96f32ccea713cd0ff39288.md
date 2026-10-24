# equivPolynomialSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49f9d63d834e05d1d2ad9bdd124157a8c863300f696e3c5ef3c4c56eec5e1e3c",
  "kind": "def",
  "lexical_name": "equivPolynomialSelf",
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
  "slug": "equivpolynomialself--7a96f32ccea713cd0ff39288",
  "source": {
    "blob": "07af0ad535001c133d543dbd3c8fd4fcb507379d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 178,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a96f32ccea713cd0ff39288e9587299794442c6a0d9346f77eadaaab01ef06e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49f9d63d834e05d1d2ad9bdd124157a8c863300f696e3c5ef3c4c56eec5e1e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivPolynomialSelf : PolynomialModule R R ≃ₗ[R[X]] R[X] :=
  { (Polynomial.toFinsuppIso R).symm with
    map_smul' := fun r x => by
      dsimp
      rw [← RingEquiv.coe_toEquiv_symm, RingEquiv.coe_toEquiv]
      induction x using induction_linear with
      | zero => rw [smul_zero, map_zero, mul_zero]
      | add _ _ hp hq => rw [smul_add, map_add, map_add, mul_add, hp, hq]
      | single n a =>
        ext i
        simp only [coeff_ofFinsupp, smul_single_apply, toFinsuppIso_symm_apply, coeff_ofFinsupp,
        single_apply, smul_eq_mul, Polynomial.coeff_mul, mul_ite, mul_zero]
        split_ifs with hn
        · rw [Finset.sum_eq_single (i - n, n)]
          · simp only [ite_true]
          · rintro ⟨p, q⟩ hpq1 hpq2
            rw [Finset.mem_antidiagonal] at hpq1
            split_ifs with H
            · dsimp at H
              exfalso
              apply hpq2
              rw [← hpq1, H]
              simp only [add_le_iff_nonpos_left, nonpos_iff_eq_zero, add_tsub_cancel_right]
            · rfl
          · intro H
            exfalso
            apply H
            rw [Finset.mem_antidiagonal, tsub_add_cancel_of_le hn]
        · symm
          rw [Finset.sum_ite_of_false, Finset.sum_const_zero]
          simp_rw [Finset.mem_antidiagonal]
          intro x hx
          contrapose! hn
          rw [add_comm, ← hn] at hx
          exact Nat.le.intro hx }

/-- `PolynomialModule R S` is isomorphic to `S[X]` as an `R` module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07af0ad535001c133d543dbd3c8fd4fcb507379d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
