# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3172ebae06a965568ec1340f4ec28b521b0e7085ad109e88d88b022df0d19e81",
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
  "slug": "instance--c0017ec30f26c4c0bd606ef8",
  "source": {
    "blob": "63286af4d73cda50f05afa350b3364de2aa7f3c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 514,
    "path": "GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0017ec30f26c4c0bd606ef8c3355f538b219f1f49ccc1dae996eef0f8715c35",
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

Occurrence: `declaration:3172ebae06a965568ec1340f4ec28b521b0e7085ad109e88d88b022df0d19e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LE (ValueGroupWithZero R) where
  le := ValueGroupWithZero.lift₂ (fun a s b t => a * t ≤ᵥ b * s) <| by
    intro x y z w t s u v h₁ h₂ h₃ h₄
    by_cases hw : w ≤ᵥ 0 <;> by_cases hz : z ≤ᵥ 0
    · refine propext ⟨fun h => vle_trans ?_ (zero_vle _), fun h => vle_trans ?_ (zero_vle _)⟩
      · apply vle_mul_cancel (s * v).prop
        grw [veq_mul_right_comm, Submonoid.coe_mul, ← mul_assoc]
        apply (mul_vle_mul_left (mul_vle_mul_left h₂ v) u).trans
        grw [veq_mul_right_comm x]
        apply (mul_vle_mul_left (mul_vle_mul_left h t) u).trans
        apply vle_trans (mul_vle_mul_left (mul_vle_mul_left (mul_vle_mul_left hz s) t) u)
        simp
      · apply vle_mul_cancel (t * u).prop
        grw [veq_mul_right_comm, Submonoid.coe_mul, ← mul_assoc]
        apply (mul_vle_mul_left (mul_vle_mul_left h₁ u) v).trans
        grw [veq_mul_right_comm y]
        apply (mul_vle_mul_left (mul_vle_mul_left h s) v).trans
        apply vle_trans (mul_vle_mul_left (mul_vle_mul_left (mul_vle_mul_left hw t) s) v)
        simp
    · absurd hz
      apply vle_mul_cancel u.prop
      simpa using h₃.trans (mul_vle_mul_left hw v)
    · absurd hw
      apply vle_mul_cancel v.prop
      simpa using h₄.trans (mul_vle_mul_left hz u)
    · refine propext ⟨fun h => ?_, fun h => ?_⟩
      · apply vle_mul_cancel s.prop
        apply vle_mul_cancel hz
        calc y * u * s * z
          _ =ᵥ y * s * (z * u) := by grw [veq_mul_comm z, veq_mul_mul_mul_comm, mul_assoc]
          _ ≤ᵥ x * t * (w * v) := by gcongr
          _ =ᵥ x * v * (t * w) := by grw [veq_mul_comm w, veq_mul_mul_mul_comm, mul_assoc]
          _ ≤ᵥ z * s * (t * w) := by gcongr
          _ =ᵥ w * t * s * z := by grw [veq_mul_comm, veq_mul_comm _ w, veq_mul_comm z, ← mul_assoc]
      · apply vle_mul_cancel t.prop
        apply vle_mul_cancel hw
        calc x * v * t * w
          _ =ᵥ x * t * (w * v) := by grw [veq_mul_comm w, veq_mul_mul_mul_comm, mul_assoc]
          _ ≤ᵥ y * s * (z * u) := by gcongr
          _ =ᵥ y * u * (s * z) := by grw [veq_mul_comm z, veq_mul_mul_mul_comm, mul_assoc]
          _ ≤ᵥ w * t * (s * z) := by gcongr
          _ =ᵥ z * s * t * w := by grw [veq_mul_comm, veq_mul_comm _ z, veq_mul_comm w, ← mul_assoc]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63286af4d73cda50f05afa350b3364de2aa7f3c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
