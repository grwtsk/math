# GradedRing.projZeroRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d580005644a1f8612c9edcd2075fbac7bdf6892d6f21d44913cafee4a0c8767",
  "kind": "def",
  "lexical_name": "GradedRing.projZeroRingHom",
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
  "slug": "gradedring-projzeroringhom--db925f16313770167b8c3bed",
  "source": {
    "blob": "8a23b6df0704206ee4f6dfc020fdb8b15e3aa314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 259,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db925f16313770167b8c3bed44c42f107d4d7c422f223cc5713893e10461448c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d580005644a1f8612c9edcd2075fbac7bdf6892d6f21d44913cafee4a0c8767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GradedRing.projZeroRingHom : A →+* A where
  toFun a := decompose 𝒜 a 0
  map_one' :=
    -- Porting note: qualified `one_mem`
    decompose_of_mem_same 𝒜 SetLike.GradedOne.one_mem
  map_zero' := by
    simp only -- Porting note: added
    rw [decompose_zero]
    rfl
  map_add' _ _ := by
    simp only -- Porting note: added
    rw [decompose_add]
    rfl
  map_mul' := by
    refine DirectSum.Decomposition.inductionOn 𝒜 (fun x => ?_) ?_ ?_
    · simp only [zero_mul, decompose_zero, zero_apply, ZeroMemClass.coe_zero]
    · rintro i ⟨c, hc⟩
      refine DirectSum.Decomposition.inductionOn 𝒜 ?_ ?_ ?_
      · simp only [mul_zero, decompose_zero, zero_apply, ZeroMemClass.coe_zero]
      · rintro j ⟨c', hc'⟩
        simp only [Subtype.coe_mk]
        by_cases h : i + j = 0
        · rw [decompose_of_mem_same 𝒜
              (show c * c' ∈ 𝒜 0 from h ▸ SetLike.GradedMul.mul_mem hc hc'),
            decompose_of_mem_same 𝒜 (show c ∈ 𝒜 0 from (add_eq_zero.mp h).1 ▸ hc),
            decompose_of_mem_same 𝒜 (show c' ∈ 𝒜 0 from (add_eq_zero.mp h).2 ▸ hc')]
        · rw [decompose_of_mem_ne 𝒜 (SetLike.GradedMul.mul_mem hc hc') h]
          rcases show i ≠ 0 ∨ j ≠ 0 by rwa [add_eq_zero, not_and_or] at h with h' | h'
          · simp only [decompose_of_mem_ne 𝒜 hc h', zero_mul]
          · simp only [decompose_of_mem_ne 𝒜 hc' h', mul_zero]
      · intro _ _ hd he
        simp only at hd he -- Porting note: added
        simp only [mul_add, decompose_add, add_apply, AddMemClass.coe_add, hd, he]
    · rintro _ _ ha hb _
      simp only at ha hb -- Porting note: added
      simp only [add_mul, decompose_add, add_apply, AddMemClass.coe_add, ha, hb]

section GradeZero

/-- The ring homomorphism from `A` to `𝒜 0` sending every `a : A` to `a₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant2e3061b5204874967c0528dba1da89bbbe7c8161cca95ecf3f613a9d3e10e1d8.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a23b6df0704206ee4f6dfc020fdb8b15e3aa314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
