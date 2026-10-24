# lifts_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c883c430c2da3e822ac57db92cd6e2395523fd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d28174f7-a317-1056-a2e5-a0c74265958f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a374cebe-be86-aeed-c699-5d34fefdee50",
  "kind": "lemma",
  "lexical_name": "lifts_add",
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
  "slug": "lifts-add--5172fe117d80cb88a8b7ffa7",
  "source": {
    "blob": "0c883c430c2da3e822ac57db92cd6e2395523fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 339,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5172fe117d80cb88a8b7ffa71f51b771f5319cbea62b2453bd843ecf0640cf40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a374cebe-be86-aeed-c699-5d34fefdee50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lifts_add {x y : ⨂[R] i, s i} {p q : FreeAddMonoid (R × Π i, s i)}
    (hp : p ∈ lifts x) (hq : q ∈ lifts y) : p + q ∈ lifts (x + y) := by
  simp only [lifts, Set.mem_setOf_eq, AddCon.coe_add]
  rw [hp, hq]

/-- If an element `p` of `FreeAddMonoid (R × Π i, s i)` lifts an element `x` of `⨂[R] i, s i`,
and if `a` is an element of `R`, then the list obtained by multiplying the first entry of each
element of `p` by `a` lifts `a • x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c883c430c2da3e822ac57db92cd6e2395523fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
