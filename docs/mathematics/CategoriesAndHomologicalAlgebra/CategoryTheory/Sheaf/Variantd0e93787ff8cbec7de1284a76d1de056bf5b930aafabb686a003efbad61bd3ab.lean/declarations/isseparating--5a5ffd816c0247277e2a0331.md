# isSeparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5539908fff981917a655e235ff979788d6fbea7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9dbb951-2127-9f31-abf2-ee163ef038ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:789373b1-1e1f-6fa9-1f3c-3a4ed85bfdcc",
  "kind": "lemma",
  "lexical_name": "isSeparating",
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
  "slug": "isseparating--5a5ffd816c0247277e2a0331",
  "source": {
    "blob": "5539908fff981917a655e235ff979788d6fbea7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5ffd816c0247277e2a0331c0c61294a85628dc938fc74b3e2da5259e4f1122",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:789373b1-1e1f-6fa9-1f3c-3a4ed85bfdcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSeparating {ι : Type w} {S : ι → A} (hS : IsSeparating (Set.range S)) :
    IsSeparating (Set.range (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda J X (S i))) := by
  intro F G f g hfg
  refine (sheafToPresheaf J A).map_injective (Presheaf.isSeparating C hS _ _ ?_)
  rintro _ ⟨⟨X, i⟩, rfl⟩ a
  apply ((sheafificationAdjunction _ _).homEquiv _ _).symm.injective
  simpa only [← Adjunction.homEquiv_naturality_right_symm] using
    hfg _ ⟨⟨X, i⟩, rfl⟩ (((sheafificationAdjunction _ _).homEquiv _ _).symm a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5539908fff981917a655e235ff979788d6fbea7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
