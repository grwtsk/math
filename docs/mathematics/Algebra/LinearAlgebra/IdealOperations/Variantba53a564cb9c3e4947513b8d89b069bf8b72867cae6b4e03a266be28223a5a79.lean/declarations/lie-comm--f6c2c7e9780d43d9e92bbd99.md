# lie_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a1da0634d42f19ba3b9e0ab57625177d6e5839c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ccd76ac-ce94-42a5-0166-6a9eb8c78ca3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab4ad0f5-af06-1ad2-eebb-8ccad29b6c3a",
  "kind": "theorem",
  "lexical_name": "lie_comm",
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
  "slug": "lie-comm--f6c2c7e9780d43d9e92bbd99",
  "source": {
    "blob": "2a1da0634d42f19ba3b9e0ab57625177d6e5839c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6c2c7e9780d43d9e92bbd99679e9981520d552d82cdc9be006eaa98b2dec941",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4ad0f5-af06-1ad2-eebb-8ccad29b6c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lie_comm : ⁅I, J⁆ = ⁅J, I⁆ := by
  suffices ∀ I J : LieIdeal R L, ⁅I, J⁆ ≤ ⁅J, I⁆ by exact le_antisymm (this I J) (this J I)
  clear! I J; intro I J
  rw [lieIdeal_oper_eq_span, lieSpan_le]; rintro x ⟨y, z, h⟩; rw [← h]
  rw [← lie_skew, ← lie_neg, ← LieSubmodule.coe_neg]
  apply lie_coe_mem_lie

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1da0634d42f19ba3b9e0ab57625177d6e5839c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
