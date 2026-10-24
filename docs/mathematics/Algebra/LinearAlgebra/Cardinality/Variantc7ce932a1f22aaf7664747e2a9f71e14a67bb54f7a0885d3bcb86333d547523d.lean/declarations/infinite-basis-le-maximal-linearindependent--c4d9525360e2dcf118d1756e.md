# infinite_basis_le_maximal_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b47e936ca3e144bf7c8bd4cfefdd043c121d895",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7e14485-0d57-8ea0-d341-c8df089edb9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69a88954-5f05-d3f6-b7e9-87237bce7c79",
  "kind": "theorem",
  "lexical_name": "infinite_basis_le_maximal_linearIndependent",
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
  "slug": "infinite-basis-le-maximal-linearindependent--c4d9525360e2dcf118d1756e",
  "source": {
    "blob": "1b47e936ca3e144bf7c8bd4cfefdd043c121d895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d9525360e2dcf118d1756e11e4e9d3402a4555158c9e781a17ae4babc2d6a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69a88954-5f05-d3f6-b7e9-87237bce7c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_basis_le_maximal_linearIndependent {ι : Type w} (b : Basis ι R M) [Infinite ι]
    {κ : Type w} (v : κ → M) (i : LinearIndependent R v) (m : i.Maximal) : #ι ≤ #κ :=
  Cardinal.lift_le.mp (infinite_basis_le_maximal_linearIndependent' b v i m)

end Ring

end Finite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b47e936ca3e144bf7c8bd4cfefdd043c121d895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
