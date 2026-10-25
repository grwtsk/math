# SemanticAutomorphism.encode_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8bd0022-0f24-bef2-62e8-5f559645f1fe",
  "kind": "theorem",
  "lexical_name": "SemanticAutomorphism.encode_equivariant",
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
  "slug": "semanticautomorphism-encode-equivariant--56c3410d6537bd90b7ebed70",
  "source": {
    "blob": "d83b0edfcfd289f44fade1f03537f0ae70f8ccbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c3410d6537bd90b7ebed706510046163a00694bcaf5a6a1fbfc708010d4dfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bd0022-0f24-bef2-62e8-5f559645f1fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SemanticAutomorphism.encode_equivariant
    {State : Type u} {Coordinate : Type v} {PredicateKind : Type w}
    {typing : SemanticTyping State Coordinate PredicateKind}
    (automorphism : SemanticAutomorphism typing)
    (value : State) (index : Coordinate) :
    typing.encode (automorphism.state value)
        (automorphism.coordinate index) =
      typing.encode value index := by
  apply Bool.eq_iff_iff.mpr
  rw [typing.encode_eq_true_iff, typing.encode_eq_true_iff]
  exact automorphism.preservesTruth index value

end Mathematics.Cubical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d83b0edfcfd289f44fade1f03537f0ae70f8ccbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
