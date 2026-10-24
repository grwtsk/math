# unique_nonDegenerate_simplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38556196fdfa4879c02859703191a4a14a9bce29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:841ca684-c593-de56-3375-507ee8a7d8cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06d55180-697d-bc1e-00f8-a325cb385614",
  "kind": "lemma",
  "lexical_name": "unique_nonDegenerate_simplex",
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
  "slug": "unique-nondegenerate-simplex--01ed07945790983f9a81b73d",
  "source": {
    "blob": "38556196fdfa4879c02859703191a4a14a9bce29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ed07945790983f9a81b73d016b544413bf44130051b9ad18c18671aae056f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06d55180-697d-bc1e-00f8-a325cb385614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unique_nonDegenerate_simplex (x : X _⦋n⦌) {m : ℕ}
    (f₁ : ⦋n⦌ ⟶ ⦋m⦌) [Epi f₁] (y₁ : X.nonDegenerate m) (hy₁ : x = X.map f₁.op y₁)
    (f₂ : ⦋n⦌ ⟶ ⦋m⦌) (y₂ : X.nonDegenerate m) (hy₂ : x = X.map f₂.op y₂) :
    y₁ = y₂ := by
  obtain ⟨⟨hf₁⟩⟩ := isSplitEpi_of_epi f₁
  ext
  simpa [g_eq_id hy₁ hy₂ hf₁] using (map_g_op_y₂ hf₁ hy₁ hy₂).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38556196fdfa4879c02859703191a4a14a9bce29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
