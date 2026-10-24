# posIndex_conj_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "838c397bdd080f8c01128c9942b789b3955585e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf8814f8e47994afef14757f2b26a7e702cc8c02c335b61667dd404b820e25be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3f10b87-462e-db0e-f84b-ed419ca5d157",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6ad35f4-99a6-f11d-36e9-354e8da7111f",
  "kind": "theorem",
  "lexical_name": "posIndex_conj_le",
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
  "slug": "posindex-conj-le--ed840a0380a62ffbf60b75d9",
  "source": {
    "blob": "838c397bdd080f8c01128c9942b789b3955585e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inertia/Variantbf8814f8e47994afef14757f2b26a7e702cc8c02c335b61667dd404b820e25be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed840a0380a62ffbf60b75d9584b2e232503c18baeac52cf747c79790dac42ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inertia/Variantbf8814f8e47994afef14757f2b26a7e702cc8c02c335b61667dd404b820e25be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ad35f4-99a6-f11d-36e9-354e8da7111f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posIndex_conj_le {Q : Matrix m m 𝕜} (hQ : Q.IsHermitian) (B : Matrix m d 𝕜) :
    posIndex (isHermitian_conjTranspose_mul_mul B hQ) ≤ posIndex hQ := by
  set M := Bᴴ * Q * B
  set hM : M.IsHermitian := isHermitian_conjTranspose_mul_mul B hQ
  -- `Vp := range M₊`, dim = posIndex hM, M pos-def on it.
  set Vp := LinearMap.range (hermPosPart hM).mulVecLin
  have hdimV : Module.finrank 𝕜 Vp = posIndex hM := finrank_range_hermPosPart hM
  have hposV : PosDefOn M Vp := posDefOn_range_hermPosPart hM
  -- `B|_{Vp}` is injective (kernel vector `x ≠ 0` has `(Bx)ᴴQ(Bx) = xᴴMx > 0`,
  -- so `Bx ≠ 0`).
  set LB : (d → 𝕜) →ₗ[𝕜] (m → 𝕜) := B.mulVecLin
  have hinj : Function.Injective (LB.domRestrict Vp) := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    rintro ⟨x, hxV⟩ hxL
    simp only [LinearMap.mem_ker, LinearMap.domRestrict_apply] at hxL
    have hxL' : B *ᵥ x = 0 := hxL
    simp only [mem_bot]
    by_contra hne
    have hne' : x ≠ 0 := fun h => hne (Subtype.ext h)
    have hpos : 0 < hermForm M x := hposV x hxV hne'
    rw [hermForm_conj Q B x, hxL'] at hpos
    simp [hermForm] at hpos
  -- `B(Vp) ⊆ 𝕜ᵐ` has `Q` pos-def on it.
  have hposBV : PosDefOn Q (LinearMap.range (LB.domRestrict Vp)) := by
    rintro _ ⟨⟨x, hxV⟩, rfl⟩ hne
    simp only [LinearMap.domRestrict_apply, LB, mulVecLin_apply] at *
    have hne' : x ≠ 0 := by
      rintro rfl; apply hne; simp
    rw [← hermForm_conj Q B x]
    exact hposV x hxV hne'
  -- Chain: posIndex hM = dim Vp = dim B(Vp) ≤ posIndex hQ.
  calc posIndex hM
      = Module.finrank 𝕜 Vp := hdimV.symm
    _ = Module.finrank 𝕜 (LinearMap.range (LB.domRestrict Vp)) :=
        (LinearMap.finrank_range_of_inj hinj).symm
    _ ≤ posIndex hQ := finrank_le_posIndex_of_posDefOn hQ hposBV

/-- **Subadditivity of the positive index** (paper §3, after `lem:inertia`).
`n₊(Q₁ + Q₂) ≤ n₊(Q₁) + n₊(Q₂)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inertia/Variantbf8814f8e47994afef14757f2b26a7e702cc8c02c335b61667dd404b820e25be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inertia/Variantbf8814f8e47994afef14757f2b26a7e702cc8c02c335b61667dd404b820e25be.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838c397bdd080f8c01128c9942b789b3955585e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
