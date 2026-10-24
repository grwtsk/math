# nonempty_algHom_of_aeval_eq_zero_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5f3fdb5637b15d4b87a850a9f820b74e0d6a206",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fc441f2-cc9d-153f-3b0a-58c348258a01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6cb7d4c-e0ef-c514-4ecf-cc97d0f13c7d",
  "kind": "theorem",
  "lexical_name": "nonempty_algHom_of_aeval_eq_zero_subset",
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
  "slug": "nonempty-alghom-of-aeval-eq-zero-subset--def8e616095c53014a6471ef",
  "source": {
    "blob": "a5f3fdb5637b15d4b87a850a9f820b74e0d6a206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 93,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def8e616095c53014a6471efed6e4a150c514597dcc026b628d54225eb5b2188",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6cb7d4c-e0ef-c514-4ecf-cc97d0f13c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algHom_of_aeval_eq_zero_subset
    (h : {p : F[X] | ∃ x : E, aeval x p = 0} ⊆ {p | ∃ y : K, aeval y p = 0}) :
    Nonempty (E →ₐ[F] K) :=
  nonempty_algHom_of_minpoly_eq fun x ↦
    have ⟨y, hy⟩ := h ⟨_, minpoly.aeval F x⟩
    ⟨y, (minpoly.eq_iff_aeval_minpoly_eq_zero <| (alg.isIntegral).1 x).mpr hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f3fdb5637b15d4b87a850a9f820b74e0d6a206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
