# findIntegralWithTolerance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5c971f72f8decf4202efc30746e62a43d0f899322a70d6c004495ff3ae45f91",
  "kind": "def",
  "lexical_name": "findIntegralWithTolerance",
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
  "slug": "findintegralwithtolerance--76c363b2f86ae24898fd1bf5",
  "source": {
    "blob": "152a9c94ededf1c30de77d810668fcef69953a87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 409,
    "path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76c363b2f86ae24898fd1bf539c2c418a7c44f8563b73f33f670ffc7e11220ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5c971f72f8decf4202efc30746e62a43d0f899322a70d6c004495ff3ae45f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def findIntegralWithTolerance (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (taylorDepth : Nat := 10)
    (hdom : evalDomainValid1 e I { taylorDepth := taylorDepth })
    (hcontdom : LeanCert.Meta.exprContinuousDomainValid e (Set.Icc I.lo I.hi))
    (_tol : ℚ) (_htol : 0 < _tol)
    (_maxSubdiv : Nat := 100) :
    IntegralResult e I :=
  -- For now, just use single-interval integration
  -- A more sophisticated version would increase subdivisions adaptively
  let evalCfg : EvalConfig := { taylorDepth := taylorDepth }
  let bounds := Integration.integrateInterval1Core e I evalCfg
  {
    bounds := bounds
    proof := Integration.integrateInterval1Core_correct e hsupp I evalCfg hdom hcontdom
  }

/-! ## Convenience Functions for Common Cases -/

/-- Check if an expression has a root in an interval (boolean version) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152a9c94ededf1c30de77d810668fcef69953a87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
