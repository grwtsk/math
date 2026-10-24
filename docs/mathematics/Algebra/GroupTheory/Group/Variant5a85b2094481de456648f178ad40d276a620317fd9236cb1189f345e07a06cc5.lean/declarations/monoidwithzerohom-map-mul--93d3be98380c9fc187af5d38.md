# MonoidWithZeroHom.map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7df93905-c9dc-a02f-d034-541bd37cbc79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74ddb5a7-1063-537a-c92c-63a13c3e733f",
  "kind": "theorem",
  "lexical_name": "MonoidWithZeroHom.map_mul",
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
  "slug": "monoidwithzerohom-map-mul--93d3be98380c9fc187af5d38",
  "source": {
    "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 945,
    "line": 930,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d3be98380c9fc187af5d3817d98cbacb818de26a3408ae037444f6319967af",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74ddb5a7-1063-537a-c92c-63a13c3e733f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–945.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MonoidWithZeroHom.map_mul [MulZeroOneClass M] [MulZeroOneClass N] (f : M →*₀ N)
  (a b : M) : f (a * b) = f a * f b := f.map_mul' a b
#align monoid_with_zero_hom.map_mul MonoidWithZeroHom.map_mul

/-- If `f` is an additive monoid homomorphism then `f (a + b) = f a + f b`. -/
add_decl_doc AddMonoidHom.map_add

namespace MonoidHom

variable [MulOneClass M] [MulOneClass N] [MonoidHomClass F M N]

/-- Given a monoid homomorphism `f : M →* N` and an element `x : M`, if `x` has a right inverse,
then `f x` has a right inverse too. For elements invertible on both sides see `IsUnit.map`. -/
@[to_additive
  "Given an AddMonoid homomorphism `f : M →+ N` and an element `x : M`, if `x` has
  a right inverse, then `f x` has a right inverse too."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d81378047e4331a9bb0763cb2e4c80736a27fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
