# is_localization_basicOpen_of_qcqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d9c0298-5d5c-992f-89d4-831e9f30af55",
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
  "slug": "is-localization-basicopen-of-qcqs--d26b3a058a3c28e53bcd0fbc",
  "source": {
    "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d26b3a058a3c28e53bcd0fbca2479996154723678197ccf5892a5664478ea708",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d9c0298-5d5c-992f-89d4-831e9f30af55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–554.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
