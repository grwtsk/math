# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac5d407390c01f8a93f5825abf1126ad298d16237669022d2a35d0906b97d5db",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--5fcd2646bb9abbadc77cec7e",
  "source": {
    "blob": "9c31f4c7f6ffaeeea200c3e00cb443b17ef3274c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 28,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eisenstein/Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fcd2646bb9abbadc77cec7e9758a82af5cd636eb7da7d4b099f52b4df6e25b7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eisenstein/Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac5d407390c01f8a93f5825abf1126ad298d16237669022d2a35d0906b97d5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : Irreducible (X ^ 4 - 10 * X ^ 2 + 1 : ℤ[X]) := by
  -- We will apply the generalized Eisenstein criterion with `q = X ^ 2 + 1` and `K = ZMod 3`.
  set f : ℤ[X] := X ^ 4 - 10 * X ^ 2 + 1 with hf_eq
  have hdeg_f : f.natDegree = 4 := by unfold f; compute_degree!
  have hf_lC : f.leadingCoeff = 1 := by
    simp only [f, leadingCoeff, hdeg_f]; compute_degree!
  set q : ℤ [X] := X ^ 2 + 1 with hq_eq
  have hq_deg : q.natDegree = 2 := by unfold q; compute_degree!
  have hq_monic : q.Monic := by unfold q; monicity!
  have hfq : f = q ^ 2 - 12 * q + 12 := by ring
   -- On the other hand, `f %ₘ q = 12`, which is not a multiple of `9`.
  apply generalizedEisenstein (K := ZMod 3) (q := q) (p := 2)
  · set q₃ : (ZMod 3)[X] := X ^ 2 + 1
    have hdeg_q₃ : q₃.natDegree = 2 := by unfold q₃; compute_degree!
    suffices Irreducible q₃ by simpa [q] using this
    apply irreducible_of_degree_le_three_of_not_isRoot
      (by simp_all) (by simp_all [q₃]; decide)
  · unfold q; monicity!
  · exact Monic.isPrimitive hf_lC
  · simp_all
  · suffices f.leadingCoeff = 1 by
      simp [this, map_one, one_ne_zero]
    simp only [leadingCoeff, hdeg_f]
    unfold f; compute_degree!
  · nth_rewrite 1 [hfq]
    rw [hf_lC, ← map_C, C_1, Polynomial.map_one, one_mul, ← sub_eq_zero]
    have : (12 : (ZMod 3)[X]) = 0 := by apply CharP.ofNat_eq_zero' _ 3 12; norm_num
    simp [this]
  · suffices f %ₘ q = 12 by
      rw [this, ← map_ofNat C, Polynomial.map_C, ne_eq, C_eq_zero, eq_zero_iff_mem,
      CharP.ker_intAlgebraMap_eq_span 3, span_singleton_pow, mem_span_singleton]
      norm_num
    rw [hfq, ← modByMonicHom_apply, LinearMap.map_add]
    convert zero_add _
    · rw [← LinearMap.mem_ker, mem_ker_modByMonic hq_monic]
      rw [pow_two, ← sub_mul]
      apply dvd_mul_left
    · symm
      simp only [modByMonicHom_apply, Polynomial.modByMonic_eq_self_iff hq_monic, f]
      rw [show q.degree = 2 by unfold q; compute_degree!]
      rw [show degree _ = 0 by compute_degree!]
      norm_num

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eisenstein/Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eisenstein/Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c31f4c7f6ffaeeea200c3e00cb443b17ef3274c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
