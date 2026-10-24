# HasSubst.monomial'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e5a401fe760068af6d4189c7386ba2154b3bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30b73508-c4a1-40c8-4244-0f65fd0c794b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b4b2c25-5465-195c-0c64-c35a7ec38d40",
  "kind": "theorem",
  "lexical_name": "HasSubst.monomial'",
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
  "slug": "hassubst-monomial--81a1815b16cafa6f9ff7d37d",
  "source": {
    "blob": "85e5a401fe760068af6d4189c7386ba2154b3bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 89,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a1815b16cafa6f9ff7d37da719855d96fd3705f899d8296a85d04222820fae",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b4b2c25-5465-195c-0c64-c35a7ec38d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem HasSubst.monomial' {n : ℕ} (hn : n ≠ 0) (s : S) :
    HasSubst (monomial S n s) :=
  HasSubst.monomial (Finsupp.single_ne_zero.mpr hn) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e5a401fe760068af6d4189c7386ba2154b3bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
