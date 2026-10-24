# ofQuotientStabilizer_mem_orbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac67a7792bf237603a0e187dcf3ff0d9e1aa7442",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de2dcfd5-d99e-fa8a-3f3a-e1c1512438b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1499205-5916-1b6f-7ff0-cd81164b9be5",
  "kind": "theorem",
  "lexical_name": "ofQuotientStabilizer_mem_orbit",
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
  "slug": "ofquotientstabilizer-mem-orbit--429ef0a3d0c25efed1bc759c",
  "source": {
    "blob": "ac67a7792bf237603a0e187dcf3ff0d9e1aa7442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 169,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:429ef0a3d0c25efed1bc759cd42200f4c1fceabfc262b6a327df2f993b36b3aa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1499205-5916-1b6f-7ff0-cd81164b9be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofQuotientStabilizer_mem_orbit (g) : ofQuotientStabilizer α x g ∈ orbit α x :=
  Quotient.inductionOn' g fun g => ⟨g, rfl⟩
#align mul_action.of_quotient_stabilizer_mem_orbit MulAction.ofQuotientStabilizer_mem_orbit
#align add_action.of_quotient_stabilizer_mem_orbit AddAction.ofQuotientStabilizer_mem_orbit

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac67a7792bf237603a0e187dcf3ff0d9e1aa7442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
