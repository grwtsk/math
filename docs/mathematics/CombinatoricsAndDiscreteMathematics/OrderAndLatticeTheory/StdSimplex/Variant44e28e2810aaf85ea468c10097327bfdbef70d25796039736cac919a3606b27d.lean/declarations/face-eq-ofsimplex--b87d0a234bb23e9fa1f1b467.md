# face_eq_ofSimplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:974a4f82-78df-0fdf-4405-b106b9a5054e",
  "kind": "lemma",
  "lexical_name": "face_eq_ofSimplex",
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
  "slug": "face-eq-ofsimplex--b87d0a234bb23e9fa1f1b467",
  "source": {
    "blob": "94b7115803732ead52de580990f069fb19683e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b87d0a234bb23e9fa1f1b467c1083d8bd7cfe9bc5307a7d298597d28fd9f6f84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:974a4f82-78df-0fdf-4405-b106b9a5054e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma face_eq_ofSimplex {n : ℕ} (S : Finset (Fin (n + 1))) (m : ℕ) (e : Fin (m + 1) ≃o S) :
    face.{u} S =
      Subcomplex.ofSimplex (X := Δ[n])
        (objMk ((OrderHom.Subtype.val _).comp
          e.toOrderEmbedding.toOrderHom)) := by
  apply le_antisymm
  · rintro ⟨k⟩ x hx
    induction k using SimplexCategory.rec with | _ k
    rw [mem_face_iff] at hx
    let φ : Fin (k + 1) →o S :=
      { toFun i := ⟨x i, hx i⟩
        monotone' := (objEquiv x).toOrderHom.monotone }
    refine ⟨Quiver.Hom.op
      (SimplexCategory.Hom.mk ((e.symm.toOrderEmbedding.toOrderHom.comp φ))), ?_⟩
    ext j : 1
    simpa only [Subtype.ext_iff] using! e.apply_symm_apply ⟨_, hx j⟩
  · simp

set_option backward.defeqAttrib.useBackward true in
/-- If `S : Finset (Fin (n + 1))` is order isomorphic to `Fin (m + 1)`,
then the face `face S` of `Δ[n]` is representable by `m`,
i.e. `face S` is isomorphic to `Δ[m]`, see `stdSimplex.isoOfRepresentableBy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b7115803732ead52de580990f069fb19683e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
