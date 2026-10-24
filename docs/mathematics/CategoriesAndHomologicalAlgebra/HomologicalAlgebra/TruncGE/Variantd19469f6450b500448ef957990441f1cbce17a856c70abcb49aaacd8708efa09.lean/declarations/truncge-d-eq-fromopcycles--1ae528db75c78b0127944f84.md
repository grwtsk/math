# truncGE'_d_eq_fromOpcycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "658752c0a0e469fe5e8f28dc89f5dd437e94ee3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc134c74-660d-0625-e29a-e4eeaa35c56a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:255d38bc-a373-b906-faf2-e023ebf5faad",
  "kind": "lemma",
  "lexical_name": "truncGE'_d_eq_fromOpcycles",
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
  "slug": "truncge-d-eq-fromopcycles--1ae528db75c78b0127944f84",
  "source": {
    "blob": "658752c0a0e469fe5e8f28dc89f5dd437e94ee3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ae528db75c78b0127944f84835376079cb9bdbc13e0a4c365a6ec70e3490cda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255d38bc-a373-b906-faf2-e023ebf5faad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma truncGE'_d_eq_fromOpcycles {i j : ι} (hij : c.Rel i j) {i' j' : ι'}
    (hi' : e.f i = i') (hj' : e.f j = j') (hi : e.BoundaryGE i) :
    (K.truncGE' e).d i j = (K.truncGE'XIsoOpcycles e hi' hi).hom ≫ K.fromOpcycles i' j' ≫
      (K.truncGE'XIso e hj' (e.not_boundaryGE_next hij)).inv := by
  dsimp [truncGE', truncGE'.d]
  rw [dif_pos hij, dif_pos hi]
  subst hi' hj'
  simp [truncGE'XIso, truncGE'XIsoOpcycles]

section

variable [HasZeroObject C]

/-- The canonical truncation of a homological complex relative to an embedding
of complex shapes `e` which satisfies `e.IsTruncGE`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd19469f6450b500448ef957990441f1cbce17a856c70abcb49aaacd8708efa09.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `658752c0a0e469fe5e8f28dc89f5dd437e94ee3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
