# isTriangulated_iff_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:169f2088-3a8f-8db3-0799-264885ade14f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97fbd1cc-7991-b9f2-0652-25d18ee54f9d",
  "kind": "lemma",
  "lexical_name": "isTriangulated_iff_comp_right",
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
  "slug": "istriangulated-iff-comp-right--c65b86ddde827996979ca640",
  "source": {
    "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c65b86ddde827996979ca640ec504c7162b15948d70fa0d0fe6548712b6fe091",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97fbd1cc-7991-b9f2-0652-25d18ee54f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_iff_comp_right {F : C ⥤ D} {G : D ⥤ E} {H : C ⥤ E} (e : F ⋙ G ≅ H)
    [F.CommShift ℤ] [G.CommShift ℤ] [H.CommShift ℤ] [NatTrans.CommShift e.hom ℤ]
    [G.IsTriangulated] [G.Full] [G.Faithful] :
    F.IsTriangulated ↔ H.IsTriangulated := by
  rw [← isTriangulated_iff_of_iso e]
  refine ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨fun T hT ↦ ?_⟩⟩
  rw [← G.map_distinguished_iff]
  exact isomorphic_distinguished _ ((F ⋙ G).map_distinguished T hT) _
    ((mapTriangleCompIso F G).symm.app T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9232e8aeda25ca6688680dc7c0e40ba84fad90ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
