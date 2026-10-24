# LinearOrderedCommGroup.closure_equiv_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7377c283907d4ebe36698b0afefff14aeabf38aab90818e9ad8872020e3cc896",
  "kind": "def",
  "lexical_name": "LinearOrderedCommGroup.closure_equiv_closure",
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
  "slug": "linearorderedcommgroup-closure-equiv-closure--51a53bbeae5f0db23edfd039",
  "source": {
    "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51a53bbeae5f0db23edfd039ee22b31aa3c16376f0d133c366b018b8922e6cdc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7377c283907d4ebe36698b0afefff14aeabf38aab90818e9ad8872020e3cc896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearOrderedCommGroup.closure_equiv_closure {G G' : Type*}
    [CommGroup G] [LinearOrder G] [IsOrderedMonoid G]
    [CommGroup G'] [LinearOrder G'] [IsOrderedMonoid G'] (x : G) (y : G') (hxy : x = 1 ↔ y = 1) :
    closure ({x} : Set G) ≃*o closure ({y} : Set G') :=
  if hx : x = 1 then by
    refine ⟨⟨⟨fun _ ↦ ⟨1, by simp [hxy.mp hx]⟩, fun _ ↦ ⟨1, by simp [hx]⟩, ?_, ?_⟩, ?_⟩, ?_⟩
    · intro ⟨a, ha⟩
      simpa [hx, closure_singleton_one, eq_comm] using ha
    · intro ⟨a, ha⟩
      simpa [hxy.mp hx, closure_singleton_one, eq_comm] using ha
    · intros
      simp
    · intro ⟨a, ha⟩ ⟨b, hb⟩
      simp only [hx, closure_singleton_one, mem_bot] at ha hb
      simp [ha, hb]
  else by
    set x' := max x x⁻¹ with hx'
    have xpos : 1 < x' := by
      simp [hx', eq_comm, hx]
    set y' := max y y⁻¹ with hy'
    have ypos : 1 < y' := by
      simp [hy', eq_comm, ← hxy, hx]
    have hxc : closure {x} = closure {x'} := by
      rcases max_cases x x⁻¹ with H|H <;>
      simp [hx', H.left]
    have hyc : closure {y} = closure {y'} := by
      rcases max_cases y y⁻¹ with H|H <;>
      simp [hy', H.left]
    refine ⟨⟨⟨
      fun a ↦ ⟨y' ^ ((mem_closure_singleton).mp
        (by simpa [hxc] using a.prop)).choose, ?_⟩,
      fun a ↦ ⟨x' ^ ((mem_closure_singleton).mp
        (by simpa [hyc] using a.prop)).choose, ?_⟩,
        ?_, ?_⟩, ?_⟩, ?_⟩
    · rw [hyc, mem_closure_singleton]
      exact ⟨_, rfl⟩
    · rw [hxc, mem_closure_singleton]
      exact ⟨_, rfl⟩
    · intro a
      generalize_proofs A B C D
      rw [Subtype.ext_iff, ← (C a).choose_spec, zpow_right_inj xpos,
          ← zpow_right_inj ypos, (A ⟨_, D a⟩).choose_spec]
    · intro a
      generalize_proofs A B C D
      rw [Subtype.ext_iff, ← (C a).choose_spec, zpow_right_inj ypos,
          ← zpow_right_inj xpos, (A ⟨_, D a⟩).choose_spec]
    · intro a b
      generalize_proofs A B C D E F
      simp only [Submonoid.coe_mul, coe_toSubmonoid, Submonoid.mk_mul_mk, Subtype.mk.injEq,
                 coe_mul, MulMemClass.mk_mul_mk, Subtype.ext_iff]
      rw [← zpow_add, zpow_right_inj ypos, ← zpow_right_inj xpos, zpow_add,
          (A a).choose_spec, (A b).choose_spec, (A (a * b)).choose_spec]
      simp
    · intro a b
      simp only [MulEquiv.coe_mk, Equiv.coe_fn_mk, Subtype.mk_le_mk]
      generalize_proofs A B C D
      simp [zpow_le_zpow_iff_right ypos, ← zpow_le_zpow_iff_right xpos, A.choose_spec,
        B.choose_spec]

variable {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [MulArchimedean G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1662abefae9ae2f71c08820aa9bbfa621a9151b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
