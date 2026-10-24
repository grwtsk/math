# opNorm_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ed221011e163658539a5afae02b4603d803afbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67a020b3-71bc-fa12-4d41-8a9696646cb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:085fddd0-f9b0-3dee-3e9d-e7fba3a52b2e",
  "kind": "theorem",
  "lexical_name": "opNorm_mul_le",
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
  "slug": "opnorm-mul-le--a07eba239fc6f66d5361fcda",
  "source": {
    "blob": "8ed221011e163658539a5afae02b4603d803afbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07eba239fc6f66d5361fcdaf32986229ea5a4c04f6685ec469107539503a50a",
  "verification": {
    "reference": "docs/verification/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:085fddd0-f9b0-3dee-3e9d-e7fba3a52b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opNorm_mul_le : ‖mul 𝕜 R‖ ≤ 1 :=
  LinearMap.mkContinuous₂_norm_le _ zero_le_one _


/-- Multiplication on the left in a non-unital normed algebra `R` as a non-unital algebra
homomorphism into the algebra of *continuous* linear maps. This is the left regular representation
of `A` acting on itself.

This has more algebraic structure than `ContinuousLinearMap.mul`, but there is no longer continuity
bundled in the first coordinate.  An alternative viewpoint is that this upgrades
`NonUnitalAlgHom.lmul` from a homomorphism into linear maps to a homomorphism into *continuous*
linear maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed221011e163658539a5afae02b4603d803afbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
