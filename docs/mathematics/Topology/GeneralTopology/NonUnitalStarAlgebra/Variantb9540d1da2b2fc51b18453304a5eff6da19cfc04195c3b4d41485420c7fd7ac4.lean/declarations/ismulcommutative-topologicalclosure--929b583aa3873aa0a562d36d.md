# isMulCommutative_topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58cfd7536ffc971eaf88aaf886d1618097db0133c09e601296f2515205221e93",
  "kind": "instance",
  "lexical_name": "isMulCommutative_topologicalClosure",
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
  "slug": "ismulcommutative-topologicalclosure--929b583aa3873aa0a562d36d",
  "source": {
    "blob": "1ef3de004946370d85eedc2b6c0b9e290c45aa52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:929b583aa3873aa0a562d36d437bb83aef26852b5b5907a368e649deef02921c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58cfd7536ffc971eaf88aaf886d1618097db0133c09e601296f2515205221e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isMulCommutative_topologicalClosure [T2Space A] (s : NonUnitalStarSubalgebra R A)
    [IsMulCommutative s] : IsMulCommutative s.topologicalClosure :=
  s.toNonUnitalSubalgebra.isMulCommutative_topologicalClosure

open scoped IsMulCommutative in
/-- If a non-unital star subalgebra of a non-unital topological star algebra is commutative, then
so is its topological closure.

See note [reducible non-instances] -/
@[deprecated isMulCommutative_topologicalClosure (since := "2026-07-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantb9540d1da2b2fc51b18453304a5eff6da19cfc04195c3b4d41485420c7fd7ac4.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef3de004946370d85eedc2b6c0b9e290c45aa52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
