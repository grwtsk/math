# mul_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b777f2-0820-7f00-848b-1da23bf0517f",
  "kind": "theorem",
  "lexical_name": "mul_smul'",
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
  "slug": "mul-smul--b5bad9722bb1b0e404226bd5",
  "source": {
    "blob": "3fb304d4ef40bf24ee99cf11450b012de924679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 310,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5bad9722bb1b0e404226bd50e4abfae515b9525acc96ac20a22b9cb7aff57b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b777f2-0820-7f00-848b-1da23bf0517f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_smul' (f g : ArithmeticFunction R) (h : ArithmeticFunction M) :
    (f * g) • h = f • g • h := by
  ext n
  simp only [mul_apply, smul_apply, sum_smul, mul_smul, smul_sum, Finset.sum_sigma']
  apply Finset.sum_bij
  pick_goal 5
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ _H
    exact ⟨(k, l * j), (l, j)⟩
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ H
    simp only [Finset.mem_sigma, mem_divisorsAntidiagonal] at H ⊢
    rcases H with ⟨⟨rfl, n0⟩, rfl, i0⟩
    refine' ⟨⟨(mul_assoc _ _ _).symm, n0⟩, trivial, _⟩
    rw [mul_ne_zero_iff] at *
    exact ⟨i0.2, n0.2⟩
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ _H
    simp only [mul_assoc]
  · rintro ⟨⟨a, b⟩, ⟨c, d⟩⟩ ⟨⟨i, j⟩, ⟨k, l⟩⟩ H₁ H₂
    simp only [Finset.mem_sigma, mem_divisorsAntidiagonal, and_imp, Prod.mk.inj_iff, add_comm,
      heq_iff_eq] at H₁ H₂ ⊢
    simp only [Sigma.mk.inj_iff, Prod.mk.injEq, heq_eq_eq, and_imp] -- porting note: added
    rintro h h2 rfl rfl
    subst h -- porting note: added.  The `rintro h ...` above was `rintro rfl ...`
    exact ⟨⟨Eq.trans H₁.2.1.symm H₂.2.1, rfl⟩, rfl, rfl⟩
  · rintro ⟨⟨i, j⟩, ⟨k, l⟩⟩ H
    refine' ⟨⟨(i * k, l), (i, k)⟩, _, _⟩
    · simp only [Finset.mem_sigma, mem_divisorsAntidiagonal] at H ⊢
      rcases H with ⟨⟨rfl, n0⟩, rfl, j0⟩
      refine' ⟨⟨mul_assoc _ _ _, n0⟩, trivial, _⟩
      rw [mul_ne_zero_iff] at *
      exact ⟨n0.1, j0.1⟩
    · simp only [true_and_iff, mem_divisorsAntidiagonal, and_true_iff, Prod.mk.inj_iff,
        eq_self_iff_true, Ne.def, mem_sigma, heq_iff_eq] at H ⊢
      rw [H.2.1]
#align nat.arithmetic_function.mul_smul' Nat.ArithmeticFunction.mul_smul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb304d4ef40bf24ee99cf11450b012de924679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
