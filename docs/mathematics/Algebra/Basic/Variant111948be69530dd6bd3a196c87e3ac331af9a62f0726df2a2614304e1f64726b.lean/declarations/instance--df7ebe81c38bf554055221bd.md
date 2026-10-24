# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d89f6f7e2c9b076a8d563f784de53081c8cf00330fbcd8f511e01d672864071b",
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
  "slug": "instance--df7ebe81c38bf554055221bd",
  "source": {
    "blob": "63286af4d73cda50f05afa350b3364de2aa7f3c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 561,
    "path": "GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df7ebe81c38bf554055221bd2f7faf255100a2ed3badb393cc47306c0eb6f28c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d89f6f7e2c9b076a8d563f784de53081c8cf00330fbcd8f511e01d672864071b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LinearOrder (ValueGroupWithZero R) where
  le_refl := ValueGroupWithZero.ind fun _ _ => .rfl
  le_trans a b c hab hbc := by
    induction a using ValueGroupWithZero.ind with | mk a₁ a₂
    induction b using ValueGroupWithZero.ind with | mk b₁ b₂
    induction c using ValueGroupWithZero.ind with | mk c₁ c₂
    rw [ValueGroupWithZero.mk_le_mk] at hab hbc ⊢
    apply vle_mul_cancel b₂.prop
    calc a₁ * c₂ * b₂
      _ =ᵥ a₁ * b₂ * c₂ := by grw [veq_mul_right_comm]
      _ ≤ᵥ b₁ * a₂ * c₂ := mul_vle_mul_left hab _
      _ =ᵥ b₁ * c₂ * a₂ := by grw [veq_mul_right_comm]
      _ ≤ᵥ c₁ * b₂ * a₂ := mul_vle_mul_left hbc _
      _ =ᵥ c₁ * a₂ * b₂ := by grw [veq_mul_right_comm]
  le_antisymm a b hab hba := by
    induction a using ValueGroupWithZero.ind
    induction b using ValueGroupWithZero.ind
    exact ValueGroupWithZero.sound hab hba
  le_total a b := by
    induction a using ValueGroupWithZero.ind
    induction b using ValueGroupWithZero.ind
    rw [ValueGroupWithZero.mk_le_mk, ValueGroupWithZero.mk_le_mk]
    apply vle_total
  toDecidableLE := Classical.decRel LE.le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63286af4d73cda50f05afa350b3364de2aa7f3c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
