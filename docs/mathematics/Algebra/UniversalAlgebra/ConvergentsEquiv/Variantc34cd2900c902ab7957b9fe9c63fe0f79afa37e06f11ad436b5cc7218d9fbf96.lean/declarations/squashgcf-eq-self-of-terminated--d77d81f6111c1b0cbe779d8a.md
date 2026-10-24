# squashGCF_eq_self_of_terminated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b7e294c26b98cb48b99b91866efd6b9a495a965",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:218a5f1e-3e7b-ab1c-be23-a0becd3598fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:675c4773-29a9-335a-9744-61344e81772e",
  "kind": "theorem",
  "lexical_name": "squashGCF_eq_self_of_terminated",
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
  "slug": "squashgcf-eq-self-of-terminated--d77d81f6111c1b0cbe779d8a",
  "source": {
    "blob": "7b7e294c26b98cb48b99b91866efd6b9a495a965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d77d81f6111c1b0cbe779d8a0e60fdaded640cac6bbbe0281cbae479e16b5ca8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:675c4773-29a9-335a-9744-61344e81772e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squashGCF_eq_self_of_terminated (terminatedAt_n : TerminatedAt g n) :
    squashGCF g n = g := by
  cases n with
  | zero =>
    change g.s.get? 0 = none at terminatedAt_n
    simp only [squashGCF, terminatedAt_n]
  | succ =>
    cases g
    simp only [squashGCF, mk.injEq, true_and]
    exact squashSeq_eq_self_of_terminated terminatedAt_n

/-- The values before the squashed position stay the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7e294c26b98cb48b99b91866efd6b9a495a965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
