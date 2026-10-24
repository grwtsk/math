# face_eq_ofSimplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b96c42-ebed-acf6-a0ab-b3a5869a3984",
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
  "slug": "face-eq-ofsimplex--56315bdc69f3a43f3bed3931",
  "source": {
    "blob": "62d9a8cfacb1965191592d0019fb8fd21bec4606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 219,
    "path": "GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56315bdc69f3a43f3bed393153d7cd2764469ee025e304ae869c04bd0d85f24f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b96c42-ebed-acf6-a0ab-b3a5869a3984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma face_eq_ofSimplex {n : ℕ} (S : Finset (Fin (n + 1))) (m : ℕ) (e : Fin (m + 1) ≃o S) :
    face.{u} S =
      Subcomplex.ofSimplex (X := Δ[n])
        (objMk ((OrderHom.Subtype.val _).comp
          e.toOrderEmbedding.toOrderHom)) := by
  apply le_antisymm
  · rintro ⟨k⟩ x hx
    induction' k using SimplexCategory.rec with k
    rw [mem_face_iff] at hx
    let φ : Fin (k + 1) →o S :=
      { toFun i := ⟨x i, hx i⟩
        monotone' := (objEquiv x).toOrderHom.monotone }
    refine ⟨Quiver.Hom.op
      (SimplexCategory.Hom.mk ((e.symm.toOrderEmbedding.toOrderHom.comp φ))), ?_⟩
    obtain ⟨f, rfl⟩ := objEquiv.symm.surjective x
    ext j : 1
    simpa only [Subtype.ext_iff] using e.apply_symm_apply ⟨_, hx j⟩
  · simp [Subcomplex.ofSimplex_le_iff]

/-- If `S : Finset (Fin (n + 1))` is order isomorphic to `Fin (m + 1)`,
then the face `face S` of `Δ[n]` is representable by `m`,
i.e. `face S` is isomorphic to `Δ[m]`, see `stdSimplex.isoOfRepresentableBy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d9a8cfacb1965191592d0019fb8fd21bec4606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
