# iSupLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca85571dfee08ff9b113523488f41be3b4272a2e5454bcd3532a69675fbb395a",
  "kind": "def",
  "lexical_name": "iSupLift",
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
  "slug": "isuplift--16d4ee8d692a70e3f7e3b077",
  "source": {
    "blob": "00c9713bb74945d8f93bafdf0ccd9d2a7c6a707c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 929,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16d4ee8d692a70e3f7e3b0779a2b35cf71a198fd29471b031b163bfc2ad7919a",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca85571dfee08ff9b113523488f41be3b4272a2e5454bcd3532a69675fbb395a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iSupLift [Nonempty ι] (K : ι → NonUnitalStarSubalgebra R A)
    (dir : Directed (· ≤ ·) K) (f : ∀ i, K i →⋆ₙₐ[R] B)
    (hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h))
    (T : NonUnitalStarSubalgebra R A) (hT : T = iSup K) : ↥T →⋆ₙₐ[R] B := by
  subst hT
  exact
    { toFun :=
        Set.iUnionLift (fun i => ↑(K i)) (fun i x => f i x)
          (fun i j x hxi hxj => by
            let ⟨k, hik, hjk⟩ := dir i j
            simp only
            rw [hf i k hik, hf j k hjk]
            rfl)
          (↑(iSup K)) (by rw [coe_iSup_of_directed dir])
      map_zero' := by
        dsimp only [SetLike.coe_sort_coe, NonUnitalAlgHom.coe_comp, Function.comp_apply,
          inclusion_mk, Eq.ndrec, id_eq, eq_mpr_eq_cast]
        exact Set.iUnionLift_const _ (fun i : ι => (0 : K i)) (fun _ => rfl)  _ (by simp)
      map_mul' := by
        dsimp only [SetLike.coe_sort_coe, NonUnitalAlgHom.coe_comp, Function.comp_apply,
          inclusion_mk, Eq.ndrec, id_eq, eq_mpr_eq_cast, ZeroMemClass.coe_zero,
          AddSubmonoid.mk_add_mk, Set.inclusion_mk]
        apply Set.iUnionLift_binary (coe_iSup_of_directed dir) dir _ (fun _ => (· * ·))
        on_goal 3 => rw [coe_iSup_of_directed dir]
        all_goals simp
      map_add' := by
        dsimp only [SetLike.coe_sort_coe, NonUnitalAlgHom.coe_comp, Function.comp_apply,
          inclusion_mk, Eq.ndrec, id_eq, eq_mpr_eq_cast]
        apply Set.iUnionLift_binary (coe_iSup_of_directed dir) dir _ (fun _ => (· + ·))
        on_goal 3 => rw [coe_iSup_of_directed dir]
        all_goals simp
      map_smul' := fun r => by
        dsimp only [SetLike.coe_sort_coe, NonUnitalAlgHom.coe_comp, Function.comp_apply,
          inclusion_mk, Eq.ndrec, id_eq, eq_mpr_eq_cast]
        apply Set.iUnionLift_unary (coe_iSup_of_directed dir) _ (fun _ x => r • x)
          (fun _ _ => rfl)
        on_goal 2 => rw [coe_iSup_of_directed dir]
        all_goals simp
      map_star' := by
        dsimp only [SetLike.coe_sort_coe, NonUnitalStarAlgHom.comp_apply, inclusion_mk, Eq.ndrec,
          id_eq, eq_mpr_eq_cast, ZeroMemClass.coe_zero, AddSubmonoid.mk_add_mk, Set.inclusion_mk,
          MulMemClass.mk_mul_mk, NonUnitalAlgHom.toDistribMulActionHom_eq_coe,
          DistribMulActionHom.toFun_eq_coe, NonUnitalAlgHom.coe_to_distribMulActionHom,
          NonUnitalAlgHom.coe_mk]
        apply Set.iUnionLift_unary (coe_iSup_of_directed dir) _ (fun _ x => star x)
          (fun _ _ => rfl)
        on_goal 2 => rw [coe_iSup_of_directed dir]
        all_goals simp [map_star] }

variable [Nonempty ι] {K : ι → NonUnitalStarSubalgebra R A} {dir : Directed (· ≤ ·) K}
  {f : ∀ i, K i →⋆ₙₐ[R] B} {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
  {T : NonUnitalStarSubalgebra R A} {hT : T = iSup K}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c9713bb74945d8f93bafdf0ccd9d2a7c6a707c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
