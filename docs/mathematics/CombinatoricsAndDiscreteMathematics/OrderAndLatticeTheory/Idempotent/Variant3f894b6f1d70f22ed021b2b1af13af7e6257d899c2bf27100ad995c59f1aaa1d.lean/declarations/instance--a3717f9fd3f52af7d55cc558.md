# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4694bde5f71f2d1a354396dd11ce806d4558cb2cd7e104c60b22c733efabd9e1",
  "kind": "instance",
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
  "slug": "instance--a3717f9fd3f52af7d55cc558",
  "source": {
    "blob": "1b414eef859e3fcbb65e0fdfb9cb41654787ba2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3717f9fd3f52af7d55cc5587dceaf1a480ce6e9f412231c3881d1fb8fcd59df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4694bde5f71f2d1a354396dd11ce806d4558cb2cd7e104c60b22c733efabd9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : BooleanAlgebra {a : R × R // a.1 * a.2 = 0 ∧ a.1 + a.2 = 1} where
  inf a b := (aᶜ ⊔ bᶜ)ᶜ
  inf_le_left a b := by simp_rw [(· ≤ ·), (· ⊔ ·), (·ᶜ), SemilatticeSup.sup,
    mul_right_comm, (IsIdempotentElem.of_mul_add a.2.1 a.2.2).1.eq]
  inf_le_right a b := by simp_rw [(· ≤ ·), (· ⊔ ·), (·ᶜ), SemilatticeSup.sup,
    mul_assoc, (IsIdempotentElem.of_mul_add b.2.1 b.2.2).1.eq]
  le_inf a b c hab hac := by
    simp_rw [(· ≤ ·), (· ⊔ ·), (·ᶜ), SemilatticeSup.sup, ← mul_assoc]; rw [hab, hac]
  le_sup_inf a b c := Eq.le <| mul_eq_zero_add_eq_one_ext_right <| by simp_rw [(· ⊔ ·), (· ⊓ ·),
    (·ᶜ), SemilatticeSup.sup, add_mul, mul_add, mul_mul_mul_comm _ b.1.1,
    (IsIdempotentElem.of_mul_add a.2.1 a.2.2).2.eq, ← mul_assoc, a.2.1, zero_mul, zero_add]
  top := ⟨(1, 0), mul_zero _, add_zero _⟩
  bot := ⟨(0, 1), zero_mul _, zero_add _⟩
  inf_compl_le_bot a := Eq.le <| mul_eq_zero_add_eq_one_ext_right <| by
    simp_rw [(· ⊔ ·), (· ⊓ ·), (·ᶜ), SemilatticeSup.sup,
      (IsIdempotentElem.of_mul_add a.2.1 a.2.2).1.eq, add_comm, a.2.2]
  top_le_sup_compl a := Eq.le <| mul_eq_zero_add_eq_one_ext_left <| by simp_rw [(· ⊔ ·), (·ᶜ),
    SemilatticeSup.sup, (IsIdempotentElem.of_mul_add a.2.1 a.2.2).2.eq, a.2.2]
  le_top _ := mul_one _
  bot_le _ := zero_mul _
  sdiff_eq _ _ := rfl
  himp_eq _ _ := rfl

end CommSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b414eef859e3fcbb65e0fdfb9cb41654787ba2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
