# finrank_le_posIndex_of_posDefOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6a57d6a-6404-7055-d586-a47da26b531d",
  "kind": "theorem",
  "lexical_name": "finrank_le_posIndex_of_posDefOn",
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
  "slug": "finrank-le-posindex-of-posdefon--d85827317e1fbeb174a23279",
  "source": {
    "blob": "e626e55ce1909069de83e287fb57423209371424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d85827317e1fbeb174a23279b710a24b447135ae407499844dadb2b73f1b4633",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a57d6a-6404-7055-d586-a47da26b531d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_le_posIndex_of_posDefOn {A : Matrix n n 𝕜} (hA : A.IsHermitian)
    {W : Submodule 𝕜 (n → 𝕜)} (hW : PosDefOn A W) :
    Module.finrank 𝕜 W ≤ posIndex hA := by
  -- `A₊ *ᵥ ·` is injective on `W`: kernel element has `xᴴAx = −xᴴA₋x ≤ 0`.
  set L : (n → 𝕜) →ₗ[𝕜] (n → 𝕜) := (hermPosPart hA).mulVecLin
  have hinj : Function.Injective (L.domRestrict W) := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    rintro ⟨x, hxW⟩ hxL
    simp only [LinearMap.mem_ker, LinearMap.domRestrict_apply] at hxL
    -- `hxL : L ⟨x, hxW⟩ = 0`, i.e. `hermPosPart hA *ᵥ x = 0`.
    have hxL' : hermPosPart hA *ᵥ x = 0 := hxL
    simp only [mem_bot]
    by_contra hne
    have hne' : x ≠ 0 := fun h => hne (Subtype.ext h)
    have hAx : hermForm A x ≤ 0 := by
      rw [← hermPosPart_sub_hermNegPart hA, hermForm_sub]
      have h1 : hermForm (hermPosPart hA) x = 0 := by
        unfold hermForm; rw [hxL']; simp
      have h2 : 0 ≤ hermForm (hermNegPart hA) x :=
        hermForm_nonneg_of_posSemidef (hermNegPart_posSemidef hA) x
      linarith
    exact absurd (hW x hxW hne') (not_lt.mpr hAx)
  -- `dim W = dim range(L|_W) ≤ dim range(L) = rank A₊ = posIndex hA`.
  calc Module.finrank 𝕜 W
      = Module.finrank 𝕜 (LinearMap.range (L.domRestrict W)) :=
        (LinearMap.finrank_range_of_inj hinj).symm
    _ ≤ Module.finrank 𝕜 (LinearMap.range L) := by
        apply Submodule.finrank_mono
        rintro y ⟨⟨x, hxW⟩, rfl⟩
        exact ⟨x, rfl⟩
    _ = (hermPosPart hA).rank := rfl
    _ = posIndex hA := rank_hermPosPart hA

open Unitary in
/-- **Sylvester's inequality (easy direction)**: the Hermitian form is
positive definite on `range A₊`, which has dimension `posIndex hA`.

For `z = A₊ · y ∈ range A₊`, the eigenbasis coordinates `c := Uᴴz` satisfy
`cᵢ = λᵢ⁺ · (Uᴴy)ᵢ`, so `cᵢ = 0` whenever `λᵢ ≤ 0`. Hence
`zᴴAz = ∑ᵢ λᵢ|cᵢ|² = ∑_{λᵢ>0} λᵢ|cᵢ|²`, each term ≥ 0; and `z ≠ 0 ⟹ c ≠ 0`
(U unitary) forces some positive term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e626e55ce1909069de83e287fb57423209371424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
