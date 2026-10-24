# equivProjectivization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0625b4bff532436dddac328e74ec18f8ebaea599bc2c3f3a76f7952ecfaafea",
  "kind": "def",
  "lexical_name": "equivProjectivization",
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
  "slug": "equivprojectivization--87c4330f9ac71f67f91f2f8c",
  "source": {
    "blob": "3b6b1d34ffbea42a37c44720751aac367be4b5e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87c4330f9ac71f67f91f2f8c87e20680e78fa216c73c065a9f4311c3739ad235",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0625b4bff532436dddac328e74ec18f8ebaea599bc2c3f3a76f7952ecfaafea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivProjectivization : OnePoint K ≃ ℙ K (Fin 2 → K) where
  toFun p := p.elim (mk K ![1, 0] (by simp)) (fun t ↦ mk K ![t, 1] (by simp))
  invFun p := by
    refine Projectivization.lift
      (fun u : {v : Fin 2 → K // v ≠ 0} ↦ if u.1 1 = 0 then ∞ else ((u.1 1)⁻¹ * u.1 0)) ?_ p
    rintro ⟨-, hv⟩ ⟨w, hw⟩ t rfl
    have ht : t ≠ 0 := by rintro rfl; simp at hv
    by_cases h₀ : w 1 = 0 <;> simp [h₀, ht, mul_assoc]
  left_inv p := by cases p <;> simp
  right_inv p := by
    induction p using ind with | h w hw =>
    by_cases h₀ : w 1 = 0 <;> simp only [mk_eq_mk_iff', h₀, Projectivization.lift_mk, ite_true,
        ite_false, OnePoint.elim_infty, OnePoint.elim_some]
    · have : w 0 ≠ 0 := fun h ↦ hw <| funext <| by simp_all
      use (w 0)⁻¹
      ext i
      fin_cases i <;> simp_all
    · exact ⟨(w 1)⁻¹, funext <| by simp [inv_mul_cancel₀ h₀]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6b1d34ffbea42a37c44720751aac367be4b5e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
