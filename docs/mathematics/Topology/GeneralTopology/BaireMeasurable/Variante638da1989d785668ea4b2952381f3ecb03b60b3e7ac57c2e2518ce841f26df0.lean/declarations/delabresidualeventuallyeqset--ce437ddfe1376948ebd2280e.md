# delabResidualEventuallyEqSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bdc65f9c0b7ff9931bf63464d829e1e1fa51211db928c86e801a8a33c815c5c",
  "kind": "def",
  "lexical_name": "delabResidualEventuallyEqSet",
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
  "slug": "delabresidualeventuallyeqset--ce437ddfe1376948ebd2280e",
  "source": {
    "blob": "10f1f6f2b0b559d0501ea0f036b480bc00aa794c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce437ddfe1376948ebd2280e75195eb6fe8fd800b0c12f843e0143aff02f3f46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bdc65f9c0b7ff9931bf63464d829e1e1fa51211db928c86e801a8a33c815c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def delabResidualEventuallyEqSet : Delab :=
  whenNotPPOption getPPExplicit <| whenPPOption getPPNotation do
    let e ← SubExpr.getExpr
    guard <| e.isAppOfArity ``Filter.EventuallyEqSet 4
    guard <| (e.getArg! 1).isAppOfArity ``residual 2
    let s ← SubExpr.withNaryArg 2 delab
    let t ← SubExpr.withNaryArg 3 delab
    `($s =ᵇ $t)

end delaborators

/-- Notation to say that a property of points in a topological space holds
almost everywhere in the sense of Baire category. That is, on a residual set. -/
scoped[Topology] notation3 "∀ᵇ " (...) ", " r:(scoped p => Filter.Eventually p <| residual _) => r

/-- Notation to say that a property of points in a topological space holds on a nonmeager set. -/
scoped[Topology] notation3 "∃ᵇ " (...) ", " r:(scoped p => Filter.Frequently p <| residual _) => r

variable {α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f1f6f2b0b559d0501ea0f036b480bc00aa794c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
