# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:175005e09f8eeeae471cb934b6f6b57a0b3c062a982b15124740c25e5e76b06c",
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
  "slug": "instance--560b830a98bbabba2c1d2df9",
  "source": {
    "blob": "63286af4d73cda50f05afa350b3364de2aa7f3c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 482,
    "path": "GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:560b830a98bbabba2c1d2df9120afd32f6c0192f517798c2db9c220d9e35fb77",
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

Occurrence: `declaration:175005e09f8eeeae471cb934b6f6b57a0b3c062a982b15124740c25e5e76b06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommMonoidWithZero (ValueGroupWithZero R) where
  mul_assoc a b c := by
    induction a using ValueGroupWithZero.ind
    induction b using ValueGroupWithZero.ind
    induction c using ValueGroupWithZero.ind
    simp [mul_assoc]
  one_mul := ValueGroupWithZero.ind <| by simp [← ValueGroupWithZero.mk_one_one]
  mul_one := ValueGroupWithZero.ind <| by simp [← ValueGroupWithZero.mk_one_one]
  zero_mul := ValueGroupWithZero.ind <| fun _ _ => by
    rw [← ValueGroupWithZero.mk_zero 1, ValueGroupWithZero.mk_mul_mk]
    simp
  mul_zero := ValueGroupWithZero.ind <| fun _ _ => by
    rw [← ValueGroupWithZero.mk_zero 1, ValueGroupWithZero.mk_mul_mk]
    simp
  mul_comm a b := by
    induction a using ValueGroupWithZero.ind
    induction b using ValueGroupWithZero.ind
    apply ValuativeRel.ValueGroupWithZero.sound <;>
    · simp only [Submonoid.coe_mul]
      nth_grw 2 [veq_mul_comm]
      nth_grw 6 [veq_mul_comm]
  npow n := ValueGroupWithZero.lift (fun a b => ValueGroupWithZero.mk (a ^ n) (b ^ n)) <| by
    intro x y t s h₁ h₂
    induction n with
    | zero => simp
    | succ n ih =>
      simp only [pow_succ, ← ValueGroupWithZero.mk_mul_mk, ih]
      apply congrArg (_ * ·)
      exact ValueGroupWithZero.sound h₁ h₂
  npow_zero := ValueGroupWithZero.ind (by simp_rw [HPow.hPow, Pow.pow]; simp)
  npow_succ n := ValueGroupWithZero.ind (by simp_rw [HPow.hPow, Pow.pow]; simp [pow_succ])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63286af4d73cda50f05afa350b3364de2aa7f3c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
