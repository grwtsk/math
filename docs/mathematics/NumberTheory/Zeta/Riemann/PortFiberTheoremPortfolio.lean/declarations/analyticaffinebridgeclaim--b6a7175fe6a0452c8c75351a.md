# analyticAffineBridgeClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07dbef9750ac70401bd4e73a3e2e6168bab9075e209246f45193447ef0282499",
  "kind": "def",
  "lexical_name": "analyticAffineBridgeClaim",
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
  "slug": "analyticaffinebridgeclaim--b6a7175fe6a0452c8c75351a",
  "source": {
    "blob": "4ba5497bfae010ec99ebd23fcac1724cff8e94a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6a7175fe6a0452c8c75351ac273fd0a705cd4e2a3fb6f1c6c6caada3dd0a2bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07dbef9750ac70401bd4e73a3e2e6168bab9075e209246f45193447ef0282499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def analyticAffineBridgeClaim : Prop :=
  ∀ (R : CommRingCat)
    (C : GRWTSK.AlgebraicGeometry.AnalyticAffineBridge.Bridge R
      GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole)
    (z : GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.realAxis.carrier),
    (C.restrict
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.Fixtures.restrictionPath.composite).pointMap z =
      C.pointMap
        ⟨z.1,
          GRWTSK.Analysis.Complex.HolomorphicSectionRing.Fixtures.restrictionPath.composite.subset
            z.2⟩

/-- Proof of the generic analytic-affine restriction law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba5497bfae010ec99ebd23fcac1724cff8e94a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
