# extremalEpi_iff_strongEpi_of_hasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b34e2dadcea8259421c9af3a848ae634ea9e0600",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a731451-91fb-6db0-260f-d0f37e6e7a3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab3f452a-14de-1210-0c5e-97dd952bc000",
  "kind": "lemma",
  "lexical_name": "extremalEpi_iff_strongEpi_of_hasPullbacks",
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
  "slug": "extremalepi-iff-strongepi-of-haspullbacks--4e5f3df8420ec5640e4d4a9f",
  "source": {
    "blob": "b34e2dadcea8259421c9af3a848ae634ea9e0600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5f3df8420ec5640e4d4a9fe5201bc02d67cba4acb2eec4952307a814c38cde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3f452a-14de-1210-0c5e-97dd952bc000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extremalEpi_iff_strongEpi_of_hasPullbacks [HasPullbacks C] :
    ExtremalEpi f ↔ StrongEpi f := by
  refine ⟨fun _ ↦ ⟨inferInstance, fun A B i _ ↦ ⟨fun {t b} sq ↦ ⟨⟨?_⟩⟩⟩⟩,
    fun _ ↦ inferInstance⟩
  have := ExtremalEpi.isIso f (pullback.lift _ _ sq.w)
    (pullback.snd _ _) (by simp)
  exact
    { l := inv (pullback.snd i b) ≫ pullback.fst _ _
      fac_left := by
        rw [← cancel_mono i, sq.w, Category.assoc, Category.assoc]
        congr 1
        rw [← cancel_epi (pullback.snd i b), IsIso.hom_inv_id_assoc,
          pullback.condition]
      fac_right := by simp [pullback.condition] }

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34e2dadcea8259421c9af3a848ae634ea9e0600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
