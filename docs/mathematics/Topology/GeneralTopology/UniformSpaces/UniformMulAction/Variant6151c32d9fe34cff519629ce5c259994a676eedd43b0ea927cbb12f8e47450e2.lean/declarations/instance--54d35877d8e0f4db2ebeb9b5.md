# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a764cdd99fbcde948a3cad504b35ebea91e45aa4de4f1e4804220116619dab96",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--54d35877d8e0f4db2ebeb9b5",
  "source": {
    "blob": "a5751507f29d26a881520a915b60ed2d310659f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54d35877d8e0f4db2ebeb9b5383631db7a78afc38cb45463578b1a95de30bda2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a764cdd99fbcde948a3cad504b35ebea91e45aa4de4f1e4804220116619dab96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) UniformContinuousConstSMul.op [SMul Mᵐᵒᵖ X] [IsCentralScalar M X]
    [UniformContinuousConstSMul M X] : UniformContinuousConstSMul Mᵐᵒᵖ X :=
  ⟨MulOpposite.rec' fun c ↦ by simpa only [op_smul_eq_smul] using uniformContinuous_const_smul c⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5751507f29d26a881520a915b60ed2d310659f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
