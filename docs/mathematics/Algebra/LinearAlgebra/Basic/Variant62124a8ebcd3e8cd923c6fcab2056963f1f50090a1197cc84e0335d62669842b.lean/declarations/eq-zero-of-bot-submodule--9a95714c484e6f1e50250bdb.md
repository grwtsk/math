# eq_zero_of_bot_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "764287ee17194368be598ea217b39ecdaf26d603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1011,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62124a8ebcd3e8cd923c6fcab2056963f1f50090a1197cc84e0335d62669842b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02651c03-3f32-c557-a1b5-34030dc77117",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b61e43b8-a23a-5764-69a7-9c8c038836eb",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_bot_submodule",
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
  "slug": "eq-zero-of-bot-submodule--9a95714c484e6f1e50250bdb",
  "source": {
    "blob": "764287ee17194368be598ea217b39ecdaf26d603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 1011,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant62124a8ebcd3e8cd923c6fcab2056963f1f50090a1197cc84e0335d62669842b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a95714c484e6f1e50250bdb7a551028913400cc4277ddaa00d9257f65441936",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant62124a8ebcd3e8cd923c6fcab2056963f1f50090a1197cc84e0335d62669842b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61e43b8-a23a-5764-69a7-9c8c038836eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1011–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_bot_submodule : ∀ b : (⊥ : Submodule R M), b = 0
  | ⟨b', hb⟩ => Subtype.eq <| show b' = 0 from (mem_bot R).1 hb
#align submodule.eq_zero_of_bot_submodule Submodule.eq_zero_of_bot_submodule

/-- The infimum of a family of invariant submodule of an endomorphism is also an invariant
submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant62124a8ebcd3e8cd923c6fcab2056963f1f50090a1197cc84e0335d62669842b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant62124a8ebcd3e8cd923c6fcab2056963f1f50090a1197cc84e0335d62669842b.lean#L1011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `764287ee17194368be598ea217b39ecdaf26d603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
