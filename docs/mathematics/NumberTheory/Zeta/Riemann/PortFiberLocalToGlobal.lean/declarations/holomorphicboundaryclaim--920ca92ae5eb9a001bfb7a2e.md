# holomorphicBoundaryClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af240642ef2bb0c49f6b5f998ab7cdffb8ad2c8b809d38ec84cd0057eb5622e1",
  "kind": "def",
  "lexical_name": "holomorphicBoundaryClaim",
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
  "slug": "holomorphicboundaryclaim--920ca92ae5eb9a001bfb7a2e",
  "source": {
    "blob": "7c2d3893b7db1b842b24a354199b18cd808b0533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:920ca92ae5eb9a001bfb7a2e94b525021559c3607dcc1e9e034307fef1d7d5cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af240642ef2bb0c49f6b5f998ab7cdffb8ad2c8b809d38ec84cd0057eb5622e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def holomorphicBoundaryClaim : Prop :=
  ∀ s : BinaryDomainCover.HolomorphicMatchingData
      GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover,
    BinaryDomainCover.HolomorphicGlueCertificate
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover s →
      ExtendsHolomorphically
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.X
        (GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap
          s.local)

/-- Proof of all certificates on the composite restriction path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2d3893b7db1b842b24a354199b18cd808b0533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
