# Function.locallyFinsuppWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:929d4ab5f8bce6eb249c9e6907d389f02ed528ff6215b0e2ca49172945da948d",
  "kind": "structure",
  "lexical_name": "Function.locallyFinsuppWithin",
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
  "slug": "function-locallyfinsuppwithin--c941b4b4674a5f3b12ce16dc",
  "source": {
    "blob": "974235a538e4173ae0b41ea303119de62b6cb342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c941b4b4674a5f3b12ce16dc836d7346fcd3b1025b41128ddef947b12dfdc925",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:929d4ab5f8bce6eb249c9e6907d389f02ed528ff6215b0e2ca49172945da948d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Function.locallyFinsuppWithin [Zero Y] where
  /-- A function `X → Y` -/
  toFun : X → Y
  /-- A proof that the support of `toFun` is contained in `U` -/
  supportWithinDomain' : toFun.support ⊆ U
  /-- A proof the the support is locally finite within `U` -/
  supportLocallyFiniteWithinDomain' : ∀ z ∈ U, ∃ t ∈ 𝓝 z, Set.Finite (t ∩ toFun.support)

variable (X Y) in
/--
A function with locally finite support is a function with locally finite support within
`⊤ : Set X`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974235a538e4173ae0b41ea303119de62b6cb342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
