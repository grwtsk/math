# baseChange_Ψ₂Sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c9bc6b68af726793a54dde4a7930b35e54cb559",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a6a356a164b687af0dd289a69f786fe47f2e9b0a4d4894c28eec3cc5fc54022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ae4fc22-bcc5-f68a-37b7-1e47cef6ea82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d06ffa4-d3f3-d4e9-0b29-4d9830135334",
  "kind": "lemma",
  "lexical_name": "baseChange_Ψ₂Sq",
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
  "slug": "basechange-sq--ea1ad7dcf72e9d6939d59e6b",
  "source": {
    "blob": "0c9bc6b68af726793a54dde4a7930b35e54cb559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 556,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a6a356a164b687af0dd289a69f786fe47f2e9b0a4d4894c28eec3cc5fc54022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1ad7dcf72e9d6939d59e6b7a8fd767ff0300061d402d8a5b4b596300511853",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant8a6a356a164b687af0dd289a69f786fe47f2e9b0a4d4894c28eec3cc5fc54022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d06ffa4-d3f3-d4e9-0b29-4d9830135334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_Ψ₂Sq : (W⁄B).Ψ₂Sq = (W⁄A).Ψ₂Sq.map f := by
  rw [← map_Ψ₂Sq, map_baseChange]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant8a6a356a164b687af0dd289a69f786fe47f2e9b0a4d4894c28eec3cc5fc54022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a6a356a164b687af0dd289a69f786fe47f2e9b0a4d4894c28eec3cc5fc54022.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c9bc6b68af726793a54dde4a7930b35e54cb559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
