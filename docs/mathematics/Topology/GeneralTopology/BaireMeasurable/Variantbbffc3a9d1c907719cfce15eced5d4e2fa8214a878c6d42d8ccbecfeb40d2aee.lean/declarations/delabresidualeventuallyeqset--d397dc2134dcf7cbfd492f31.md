# delabResidualEventuallyEqSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38917951bcbb8347f3c85b0236df3d7be36346caf4b20105a9ee37d402becde2",
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
  "slug": "delabresidualeventuallyeqset--d397dc2134dcf7cbfd492f31",
  "source": {
    "blob": "fc445a39538cd7275e52fc6b2efc1321a4e2681b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d397dc2134dcf7cbfd492f3103e19ddb82311e0bd7b4c6fe3d37b066c111e8e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38917951bcbb8347f3c85b0236df3d7be36346caf4b20105a9ee37d402becde2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc445a39538cd7275e52fc6b2efc1321a4e2681b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
