# is_localization_basicOpen_of_qcqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c419e4a-8e49-5545-340d-ac09bf18d9e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6548b2c-1e75-d652-34dc-ebe165de561c",
  "kind": "theorem",
  "lexical_name": "is_localization_basicOpen_of_qcqs",
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
  "slug": "is-localization-basicopen-of-qcqs--fd05a883b387e11c0401f600",
  "source": {
    "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 518,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd05a883b387e11c0401f600766ed97e5d0e1c678cfa0e92f02d7936eb3808b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6548b2c-1e75-d652-34dc-ebe165de561c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_localization_basicOpen_of_qcqs {X : Scheme} {U : Opens X.carrier} (hU : IsCompact U.1)
    (hU' : IsQuasiSeparated U.1) (f : X.presheaf.obj (op U)) :
    IsLocalization.Away f (X.presheaf.obj (op <| X.basicOpen f)) := by
  constructor
  · rintro ⟨_, n, rfl⟩
    simp only [map_pow, Subtype.coe_mk, RingHom.algebraMap_toAlgebra]
    exact IsUnit.pow _ (RingedSpace.isUnit_res_basicOpen _ f)
  · intro z
    obtain ⟨n, y, e⟩ := exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated X U hU hU' f z
    refine' ⟨⟨y, _, n, rfl⟩, _⟩
    simpa only [map_pow, Subtype.coe_mk, RingHom.algebraMap_toAlgebra, mul_comm z] using e.symm
  · intro x y
    rw [← sub_eq_zero, ← map_sub, RingHom.algebraMap_toAlgebra]
    simp_rw [← @sub_eq_zero _ _ (_ * x) (_ * y), ← mul_sub]
    generalize x - y = z
    constructor
    · intro H
      obtain ⟨n, e⟩ := exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact X hU _ _ H
      refine' ⟨⟨_, n, rfl⟩, _⟩
      simpa [mul_comm z] using e
    · rintro ⟨⟨_, n, rfl⟩, e : f ^ n * z = 0⟩
      rw [← ((RingedSpace.isUnit_res_basicOpen _ f).pow n).mul_right_inj, mul_zero, ←
        map_pow]
      -- Porting note: this one lemma needs `erw`
      erw [← map_mul]
      rw [e, map_zero]
#align algebraic_geometry.is_localization_basic_open_of_qcqs AlgebraicGeometry.is_localization_basicOpen_of_qcqs

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d2a0a40efa2d762aac283a9612445e6427169d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
