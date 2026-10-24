# separableClosure.isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:793999141a12bc6b23ad2e3a8720e867d0aab580f0e08b0f1a7c1bb0137a5536",
  "kind": "instance",
  "lexical_name": "separableClosure.isAlgebraic",
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
  "slug": "separableclosure-isalgebraic--35a20792defee425c24b1232",
  "source": {
    "blob": "79f8ce0c9be18f28045cc36cb22d99038413639b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 146,
    "path": "GRWTSK/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35a20792defee425c24b1232abf1cb340e8c9f5ed2e9aab2139654e8c05660a1",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:793999141a12bc6b23ad2e3a8720e867d0aab580f0e08b0f1a7c1bb0137a5536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance separableClosure.isAlgebraic : Algebra.IsAlgebraic F (separableClosure F E) :=
  ⟨fun x ↦ isAlgebraic_iff.2 (IsSeparable.isIntegral x.2).isAlgebraic⟩

/-- The separable closure of `F` in `E` is separable over `F`. -/
@[stacks 030K "$E_{sep}/F$ is separable"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f8ce0c9be18f28045cc36cb22d99038413639b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
