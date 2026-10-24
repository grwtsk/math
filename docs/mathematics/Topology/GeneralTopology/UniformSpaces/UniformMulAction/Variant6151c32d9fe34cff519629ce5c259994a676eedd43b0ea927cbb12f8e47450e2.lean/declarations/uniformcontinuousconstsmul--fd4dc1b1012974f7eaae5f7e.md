# UniformContinuousConstSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56dac9c4656a78d40ec8e044cfa8e091db2d7e803e6d9796744c031da07bf3ba",
  "kind": "class",
  "lexical_name": "UniformContinuousConstSMul",
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
  "slug": "uniformcontinuousconstsmul--fd4dc1b1012974f7eaae5f7e",
  "source": {
    "blob": "a5751507f29d26a881520a915b60ed2d310659f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd4dc1b1012974f7eaae5f7ef3aeeb2a593667167bd8b58529e76b0c062f3781",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56dac9c4656a78d40ec8e044cfa8e091db2d7e803e6d9796744c031da07bf3ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class UniformContinuousConstSMul [SMul M X] : Prop where
  uniformContinuous_const_smul : ∀ c : M, UniformContinuous (c • · : X → X)

export UniformContinuousConstVAdd (uniformContinuous_const_vadd)

export UniformContinuousConstSMul (uniformContinuous_const_smul)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5751507f29d26a881520a915b60ed2d310659f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
