# exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b2f3d4d-58d5-0d3f-685e-7bdca659763b",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux",
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
  "slug": "exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux--941d7a3007ca82f4bde138f5",
  "source": {
    "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 322,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941d7a3007ca82f4bde138f555edbcba55921f762b574cbf58dcc5dfe5e945b2",
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

Occurrence: `result:4b2f3d4d-58d5-0d3f-685e-7bdca659763b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux (X : Scheme)
    (S : X.affineOpens) (U₁ U₂ : Opens X.carrier) {n₁ n₂ : ℕ} {y₁ : X.presheaf.obj (op U₁)}
    {y₂ : X.presheaf.obj (op U₂)} {f : X.presheaf.obj (op <| U₁ ⊔ U₂)}
    {x : X.presheaf.obj (op <| X.basicOpen f)} (h₁ : S.1 ≤ U₁) (h₂ : S.1 ≤ U₂)
    (e₁ :
      X.presheaf.map
          (homOfLE <| X.basicOpen_le (X.presheaf.map (homOfLE le_sup_left).op f) : _ ⟶ U₁).op y₁ =
        X.presheaf.map (homOfLE (by erw [X.basicOpen_res]; exact inf_le_left)).op
              (X.presheaf.map (homOfLE le_sup_left).op f) ^
            n₁ *
          (X.presheaf.map (homOfLE (by erw [X.basicOpen_res]; exact inf_le_right)).op) x)
    (e₂ :
      X.presheaf.map
          (homOfLE <| X.basicOpen_le (X.presheaf.map (homOfLE le_sup_right).op f) : _ ⟶ U₂).op y₂ =
        X.presheaf.map (homOfLE (by rw [X.basicOpen_res]; exact inf_le_left)).op
              (X.presheaf.map (homOfLE le_sup_right).op f) ^
            n₂ *
          (X.presheaf.map (homOfLE (by rw [X.basicOpen_res]; exact inf_le_right)).op) x) :
    ∃ n : ℕ,
      X.presheaf.map (homOfLE <| h₁).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ (n + n₂) * y₁) =
        X.presheaf.map (homOfLE <| h₂).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ (n + n₁) * y₂) := by
  -- have : IsLocalization.Away _ _ :=
  --   isLocalization_basicOpen S.2 (X.presheaf.map (homOfLE <| le_trans h₁ le_sup_left).op f)
  obtain ⟨⟨_, n, rfl⟩, e⟩ :=
    (@IsLocalization.eq_iff_exists _ _ _ _ _ _
      (isLocalization_basicOpen S.2 (X.presheaf.map (homOfLE <| le_trans h₁ le_sup_left).op f))
        (X.presheaf.map (homOfLE <| h₁).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ n₂ * y₁))
        (X.presheaf.map (homOfLE <| h₂).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ n₁ * y₂))).mp <| by
    -- Porting note: was just a `simp`, but know as some lemmas need `erw`, just a `simp` does not
    -- leave the goal in a desired form
    rw [RingHom.algebraMap_toAlgebra, map_mul, map_mul, map_pow, map_pow, map_mul, map_pow, map_mul]
    erw [map_pow]
    rw [←comp_apply, ←comp_apply]
    erw [←comp_apply, ←comp_apply, ←comp_apply, ←comp_apply]
    simp only [← Functor.map_comp, ← op_comp, homOfLE_comp]
    have h₃ : X.basicOpen ((X.presheaf.map (homOfLE (h₁.trans le_sup_left)).op) f) ≤ S.val := by
      simpa only [X.basicOpen_res] using inf_le_left
    trans X.presheaf.map (homOfLE <| h₃.trans <| h₁.trans le_sup_left).op f ^ (n₂ + n₁) *
      X.presheaf.map (homOfLE <| (X.basicOpen_res f _).trans_le inf_le_right).op x
    · rw [pow_add, mul_assoc]; congr 1
      convert congr_arg (X.presheaf.map (homOfLE _).op) e₁ using 1
      pick_goal 3
      · rw [X.basicOpen_res, X.basicOpen_res]; rintro x ⟨H₁, H₂⟩; exact ⟨h₁ H₁, H₂⟩
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr 1
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
    · rw [add_comm, pow_add, mul_assoc]; congr 1
      convert congr_arg (X.presheaf.map (homOfLE _).op) e₂.symm
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
      · simp only [X.basicOpen_res]
        rintro x ⟨H₁, H₂⟩; exact ⟨h₂ H₁, H₂⟩
  use n
  simp only [pow_add, map_pow, map_mul, ← comp_apply, ← mul_assoc, ← Functor.map_comp,
    Subtype.coe_mk] at e ⊢
  exact e
#align algebraic_geometry.exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux AlgebraicGeometry.exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux

set_option maxHeartbeats 7000000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
