# radialMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f92868ffcb0a2d1c84b99d2a9eaeb74ad77d73103b0555ee7accaa43019d9983",
  "kind": "def",
  "lexical_name": "radialMass",
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
  "slug": "radialmass--9cc174ca91fd326479db900f",
  "source": {
    "blob": "aeac2dbffda9d6cdcf5f6ba18743af325785a5f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 296,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cc174ca91fd326479db900fbcc0ab156a15f59c4d549fe492ac22bcf78691d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f92868ffcb0a2d1c84b99d2a9eaeb74ad77d73103b0555ee7accaa43019d9983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def radialMass (z : ℂ) : ℝ := ∫ r : ℝ in 0..1, r ^ 10 * ‖radialProfile z r‖ ^ 2

/-- The nonnegative radial Dirichlet energy with weight `r^10`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeac2dbffda9d6cdcf5f6ba18743af325785a5f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
