# rational_obstruction_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4258ccf87c2066dcdc4eb850121bf6a61d530aea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/LinearAlgebra/CommonJ/Checks/Audit.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8aad8ee7-7e10-dc28-c48b-54176549cae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e7881e6-2bc0-1859-47f3-53415e720335",
  "kind": "theorem",
  "lexical_name": "rational_obstruction_consumer",
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
  "slug": "rational-obstruction-consumer--46c160a202a6f7fb02249367",
  "source": {
    "blob": "4258ccf87c2066dcdc4eb850121bf6a61d530aea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 21,
    "path": "GRWTSK/LinearAlgebra/CommonJ/Checks/Audit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c160a202a6f7fb02249367ae29ff17a5ea7634848e5fc06ef7cf1c44f0562c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e7881e6-2bc0-1859-47f3-53415e720335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_obstruction_consumer :
    GRWTSK.Algebra.orderedProduct (fun _ => rationalEdge) 0 2 ≠ 1 :=
  rational_two_edge_loop_nonidentity

-- Ask Lean's own reserved-name mechanism for the caller-generated theorem.
#check rotationUnit.congr_simp

end GRWTSK.LinearAlgebra.CommonJ.Checks

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/CommonJ/Checks/Audit.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4258ccf87c2066dcdc4eb850121bf6a61d530aea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
