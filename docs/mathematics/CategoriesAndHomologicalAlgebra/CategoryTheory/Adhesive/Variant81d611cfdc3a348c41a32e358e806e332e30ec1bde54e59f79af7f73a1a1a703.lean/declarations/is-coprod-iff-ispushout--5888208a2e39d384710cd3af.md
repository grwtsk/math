# is_coprod_iff_isPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "359481872780845c029f738342224ea56b3781a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3f45f75-3db5-d257-88fd-7a192612d25e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb5c4042-64ed-e36e-b34d-1b7c11a253bd",
  "kind": "theorem",
  "lexical_name": "is_coprod_iff_isPushout",
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
  "slug": "is-coprod-iff-ispushout--5888208a2e39d384710cd3af",
  "source": {
    "blob": "359481872780845c029f738342224ea56b3781a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5888208a2e39d384710cd3af15e33213a26b2b8be4ec0430375938eaa3c3cd83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb5c4042-64ed-e36e-b34d-1b7c11a253bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_coprod_iff_isPushout {X E Y YE : C} (c : BinaryCofan X E) (hc : IsColimit c) {f : X ⟶ Y}
    {iY : Y ⟶ YE} {fE : c.pt ⟶ YE} (H : CommSq f c.inl iY fE) :
    Nonempty (IsColimit (BinaryCofan.mk (c.inr ≫ fE) iY)) ↔ IsPushout f c.inl iY fE := by
  constructor
  · rintro ⟨h⟩
    refine' ⟨H, ⟨Limits.PushoutCocone.isColimitAux' _ _⟩⟩
    intro s
    dsimp only [PushoutCocone.inr, PushoutCocone.mk] -- Porting note: Originally `dsimp`
    refine' ⟨h.desc (BinaryCofan.mk (c.inr ≫ s.inr) s.inl), h.fac _ ⟨WalkingPair.right⟩, _, _⟩
    · apply BinaryCofan.IsColimit.hom_ext hc
      · rw [← H.w_assoc]; erw [h.fac _ ⟨WalkingPair.right⟩]; exact s.condition
      · rw [← Category.assoc]; exact h.fac _ ⟨WalkingPair.left⟩
    · intro m e₁ e₂
      apply BinaryCofan.IsColimit.hom_ext h
      · dsimp only [BinaryCofan.mk, id] -- Porting note: Originally `dsimp`
        rw [Category.assoc, e₂, eq_comm]; exact h.fac _ ⟨WalkingPair.left⟩
      · refine' e₁.trans (Eq.symm _); exact h.fac _ _
  · refine' fun H => ⟨_⟩
    fapply Limits.BinaryCofan.isColimitMk
    · exact fun s => H.isColimit.desc (PushoutCocone.mk s.inr _ <|
        (hc.fac (BinaryCofan.mk (f ≫ s.inr) s.inl) ⟨WalkingPair.left⟩).symm)
    · intro s
      erw [Category.assoc, H.isColimit.fac _ WalkingSpan.right, hc.fac]; rfl
    · intro s; exact H.isColimit.fac _ WalkingSpan.left
    · intro s m e₁ e₂
      apply PushoutCocone.IsColimit.hom_ext H.isColimit
      · symm; exact (H.isColimit.fac _ WalkingSpan.left).trans e₂.symm
      · erw [H.isColimit.fac _ WalkingSpan.right]
        apply BinaryCofan.IsColimit.hom_ext hc
        · erw [hc.fac, ← H.w_assoc, e₂]; rfl
        · refine' ((Category.assoc _ _ _).symm.trans e₁).trans _; symm; exact hc.fac _ _
#align category_theory.is_coprod_iff_is_pushout CategoryTheory.is_coprod_iff_isPushout

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359481872780845c029f738342224ea56b3781a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
