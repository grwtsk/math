# Complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b69c74a1e95075ce54c0a1e773cdad1eb251859e566a72139fc251ad12e650b3",
  "kind": "structure",
  "lexical_name": "Complex",
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
  "slug": "complex--006d0ddfe7b0e0ca445ffe36",
  "source": {
    "blob": "1859d381624310d05bec99050c936c3e13fca3a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 11,
    "path": "GRWTSK/Algebra/GroupTheory/AA4dddb11ac52531e/Variantf687389ebdd9e28c1492bd052311f2ae74d610bdb822532ca7e164927dc8ec26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:006d0ddfe7b0e0ca445ffe36d7e7a5e6e0098baa25b79b552039177a7bcc400a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AA4dddb11ac52531e/Variantf687389ebdd9e28c1492bd052311f2ae74d610bdb822532ca7e164927dc8ec26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b69c74a1e95075ce54c0a1e773cdad1eb251859e566a72139fc251ad12e650b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Complex (Chain : Type u) [AddCommMonoid Chain] where
  dimension : Nat
  boundary : Chain →+ Chain
  boundary_squared_zero : ∀ chain, boundary (boundary chain) = 0

end Mathematics.Cubical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AA4dddb11ac52531e/Variantf687389ebdd9e28c1492bd052311f2ae74d610bdb822532ca7e164927dc8ec26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AA4dddb11ac52531e/Variantf687389ebdd9e28c1492bd052311f2ae74d610bdb822532ca7e164927dc8ec26.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1859d381624310d05bec99050c936c3e13fca3a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
