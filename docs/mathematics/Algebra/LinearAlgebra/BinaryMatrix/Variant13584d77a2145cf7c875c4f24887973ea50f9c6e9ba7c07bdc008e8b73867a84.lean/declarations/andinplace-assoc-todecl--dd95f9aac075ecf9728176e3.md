# andInPlace_assoc_toDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "702913a371aa7b2651aad0b55160b65e53a8cd93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:249db496-c6ea-490a-8334-0bbd8ef4997b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79b58558-3ccd-7e54-05c2-affeceb6df55",
  "kind": "theorem",
  "lexical_name": "andInPlace_assoc_toDecl",
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
  "slug": "andinplace-assoc-todecl--dd95f9aac075ecf9728176e3",
  "source": {
    "blob": "702913a371aa7b2651aad0b55160b65e53a8cd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 474,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd95f9aac075ecf9728176e34372d541225a943cf323debec371607537b14613",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79b58558-3ccd-7e54-05c2-affeceb6df55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem andInPlace_assoc_toDecl
    (A B C : BinMatMut m n) :
    ((A.andInPlace B).andInPlace C).toDecl =
      (A.andInPlace (B.andInPlace C)).toDecl := by
  rw [andInPlace_spec, andInPlace_spec]
  rw [andInPlace_spec, andInPlace_spec]
  exact BinMat.and_assoc A.toDecl B.toDecl C.toDecl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702913a371aa7b2651aad0b55160b65e53a8cd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
