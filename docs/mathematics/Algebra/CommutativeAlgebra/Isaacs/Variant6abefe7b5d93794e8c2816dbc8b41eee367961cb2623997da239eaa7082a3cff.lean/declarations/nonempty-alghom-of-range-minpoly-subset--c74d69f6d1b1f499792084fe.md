# nonempty_algHom_of_range_minpoly_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "725f6ea061e1c2154517a158aa416b280d021cc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fea7f2e3-0b86-0db8-b0d6-7cc78b9e0983",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64bbd568-5c59-4ab7-0b58-98bca33929a2",
  "kind": "theorem",
  "lexical_name": "nonempty_algHom_of_range_minpoly_subset",
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
  "slug": "nonempty-alghom-of-range-minpoly-subset--c74d69f6d1b1f499792084fe",
  "source": {
    "blob": "725f6ea061e1c2154517a158aa416b280d021cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c74d69f6d1b1f499792084fe809f8711ff76579c3841ec513387ca0303cc4c3b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64bbd568-5c59-4ab7-0b58-98bca33929a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algHom_of_range_minpoly_subset
    (h : Set.range (@minpoly F E _ _ _) ⊆ Set.range (@minpoly F K _ _ _)) :
    Nonempty (E →ₐ[F] K) :=
  nonempty_algHom_of_minpoly_eq fun x ↦ have ⟨y, hy⟩ := h ⟨x, rfl⟩; ⟨y, hy.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725f6ea061e1c2154517a158aa416b280d021cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
