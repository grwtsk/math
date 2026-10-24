# orderOf_frobeniusAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a85047d0-7efc-877b-3569-bb258ed6dd69",
  "kind": "theorem",
  "lexical_name": "orderOf_frobeniusAlgHom",
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
  "slug": "orderof-frobeniusalghom--b36d90776927b9ce3338bf6f",
  "source": {
    "blob": "5f0deb70e94b83ab71368b55be6986c80e488573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 369,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b36d90776927b9ce3338bf6ff29f8ff80789a605db37a3140f0a1bf67c0f2676",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85047d0-7efc-877b-3569-bb258ed6dd69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_frobeniusAlgHom : orderOf (frobeniusAlgHom K L) = Module.finrank K L :=
  (orderOf_eq_iff Module.finrank_pos).mpr <| by
    have := Fintype.ofFinite L
    refine ⟨DFunLike.ext _ _ fun x ↦ ?_, fun m lt pos eq ↦ ?_⟩
    · simp_rw [AlgHom.coe_pow, coe_frobeniusAlgHom, pow_iterate, AlgHom.one_apply,
        ← Module.card_eq_pow_finrank, pow_card]
    have := card_le_degree_of_subset_roots (R := L) (p := X ^ q ^ m - X) (Z := univ) fun x _ ↦ by
      simp_rw [mem_roots', IsRoot, eval_sub, eval_pow, eval_X]
      have := DFunLike.congr_fun eq x
      rw [AlgHom.coe_pow, coe_frobeniusAlgHom, pow_iterate, AlgHom.one_apply, ← sub_eq_zero] at this
      refine ⟨fun h ↦ ?_, this⟩
      simpa [if_neg (Nat.one_lt_pow pos.ne' Fintype.one_lt_card).ne] using congr_arg (coeff · 1) h
    refine this.not_lt (((natDegree_sub_le ..).trans_eq ?_).trans_lt <|
      (Nat.pow_lt_pow_right Fintype.one_lt_card lt).trans_eq Module.card_eq_pow_finrank.symm)
    simp [Nat.one_le_pow _ _ Fintype.card_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0deb70e94b83ab71368b55be6986c80e488573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
