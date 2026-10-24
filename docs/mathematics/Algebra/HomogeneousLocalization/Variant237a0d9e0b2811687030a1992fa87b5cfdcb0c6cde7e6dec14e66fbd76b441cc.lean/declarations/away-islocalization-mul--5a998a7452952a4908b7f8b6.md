# Away.isLocalization_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae7087e65e564ba3e012927edf8174f6f65c890f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdbcf201-0811-f561-71d3-cda62b7886c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2926aca1-9d52-bed4-29ef-25626cbb86cd",
  "kind": "theorem",
  "lexical_name": "Away.isLocalization_mul",
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
  "slug": "away-islocalization-mul--5a998a7452952a4908b7f8b6",
  "source": {
    "blob": "ae7087e65e564ba3e012927edf8174f6f65c890f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 758,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a998a7452952a4908b7f8b6d098b07577d7536a4b3093ee184d1f08e269e639",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2926aca1-9d52-bed4-29ef-25626cbb86cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.isLocalization_mul (hd : d ≠ 0) :
    letI := (awayMap 𝒜 hg hx).toAlgebra
    IsLocalization.Away (isLocalizationElem hf hg) (Away 𝒜 x) := by
  letI := (awayMap 𝒜 hg hx).toAlgebra
  constructor
  · rintro ⟨r, n, rfl⟩
    rw [map_pow, RingHom.algebraMap_toAlgebra]
    let z : Away 𝒜 x := Away.mk 𝒜 (hx ▸ SetLike.mul_mem_graded hf hg) (d + e)
        (g ^ e * f ^ (2 * e + d)) <| by
      convert SetLike.mul_mem_graded (SetLike.pow_mem_graded e hg)
        (SetLike.pow_mem_graded (2 * e + d) hf) using 2
      ring
    refine (isUnit_iff_exists_inv.mpr ⟨z, ?_⟩).pow _
    ext
    simp only [val_mul, val_one, awayMap_mk, Away.val_mk, z, Localization.mk_mul]
    rw [← Localization.mk_one, Localization.mk_eq_mk_iff, Localization.r_iff_exists]
    use 1
    simp only [OneMemClass.coe_one, one_mul, Submonoid.coe_mul, mul_one, hx]
    ring
  · intro z
    obtain ⟨n, s, hs, rfl⟩ := Away.mk_surjective 𝒜 (hx ▸ SetLike.mul_mem_graded hf hg) z
    rcases d with - | d
    · contradiction
    let t : Away 𝒜 f := Away.mk 𝒜 hf (n * (e + 1)) (s * g ^ (n * d)) <| by
      convert SetLike.mul_mem_graded hs (SetLike.pow_mem_graded _ hg) using 2; simp; ring
    refine ⟨⟨t, ⟨_, ⟨n, rfl⟩⟩⟩, ?_⟩
    ext
    simp only [RingHom.algebraMap_toAlgebra, map_pow, awayMap_mk, val_mul, val_mk, val_pow,
      Localization.mk_pow, Localization.mk_mul, t]
    rw [Localization.mk_eq_mk_iff, Localization.r_iff_exists]
    exact ⟨1, by simp; ring⟩
  · intro a b e
    obtain ⟨n, a, ha, rfl⟩ := Away.mk_surjective 𝒜 hf a
    obtain ⟨m, b, hb, rfl⟩ := Away.mk_surjective 𝒜 hf b
    replace e := congr_arg val e
    simp only [RingHom.algebraMap_toAlgebra, awayMap_mk, val_mk,
      Localization.mk_eq_mk_iff, Localization.r_iff_exists] at e
    obtain ⟨⟨_, k, rfl⟩, hc⟩ := e
    refine ⟨⟨_, k + m + n, rfl⟩, ?_⟩
    ext
    simp only [OneMemClass.coe_one, one_mul, val_mul, val_pow, val_mk, Localization.mk_pow,
      Localization.mk_eq_mk_iff, Localization.r_iff_exists, Submonoid.coe_mul, Localization.mk_mul,
      SubmonoidClass.coe_pow, Subtype.exists, exists_prop]
    refine ⟨_, ⟨k, rfl⟩, ?_⟩
    rcases d with - | d
    · contradiction
    subst hx
    convert congr(f ^ (e * (k + m + n)) * g ^ (d * (k + m + n)) * $hc) using 1 <;> ring

end isLocalization

section span

variable [AddCommMonoid ι] [DecidableEq ι] {𝒜 : ι → Submodule R A} [GradedAlgebra 𝒜] in
/--
Let `𝒜` be a graded algebra, finitely generated (as an algebra) over `𝒜₀` by `{ vᵢ }`,
where `vᵢ` has degree `dvᵢ`.
If `f : A` has degree `d`, then `𝒜_(f)` is generated (as a module) over `𝒜₀` by
elements of the form `(∏ i, vᵢ ^ aᵢ) / fᵃ` such that `∑ aᵢ • dvᵢ = a • d`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae7087e65e564ba3e012927edf8174f6f65c890f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
