# exists_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa6ffedbb0156fe28dee22715e21ddc3d251db05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:686dd097-67ee-c799-b336-5b9d8f91afe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a50bafe-5d11-b02f-e479-33ff61edc06c",
  "kind": "lemma",
  "lexical_name": "exists_hom",
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
  "slug": "exists-hom--c40c7a3de51fa3316c3a91bc",
  "source": {
    "blob": "aa6ffedbb0156fe28dee22715e21ddc3d251db05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c40c7a3de51fa3316c3a91bc0a3e8e7a925c15d61e4a832e49d4de0381e6071d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a50bafe-5d11-b02f-e479-33ff61edc06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_hom (n m : ℤ) (hnm : n + 1 = m := by lia) :
    ∃ (φ : Q.X n ⟶ K.X m), π.f n ≫ φ ≫ ι.f m = (cocycle₁' sq hsq).1.v n m hnm := by
  have : Epi π := Cofork.IsColimit.epi hQ
  obtain ⟨l, hl⟩ := CokernelCofork.IsColimit.desc'
    ((CokernelCofork.isColimitMapCoconeEquiv _ _).1
    (isColimitOfPreserves (HomologicalComplex.eval _ _ n) hQ))
    ((cocycle₁' sq hsq).1.v n m hnm) (by simp)
  dsimp [CokernelCofork.map] at l hl
  obtain ⟨l', hl'⟩ := KernelFork.IsLimit.lift' ((KernelFork.isLimitMapConeEquiv _ _).1
    (isLimitOfPreserves (HomologicalComplex.eval _ _ m) hK)) l (by
      simp [← cancel_epi (π.f n), reassoc_of% hl])
  exact ⟨l', by cat_disch⟩

/-- The `1`-cochain from `Q` to `K` which refines `cocycle₁'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa6ffedbb0156fe28dee22715e21ddc3d251db05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
