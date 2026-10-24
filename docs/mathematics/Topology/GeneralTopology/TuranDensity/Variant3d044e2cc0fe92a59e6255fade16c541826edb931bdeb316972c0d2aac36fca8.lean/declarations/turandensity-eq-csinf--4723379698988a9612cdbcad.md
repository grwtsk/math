# turanDensity_eq_csInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b606fca-4c9e-f451-2a91-697038459f5d",
  "kind": "theorem",
  "lexical_name": "turanDensity_eq_csInf",
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
  "slug": "turandensity-eq-csinf--4723379698988a9612cdbcad",
  "source": {
    "blob": "b8ae7258174206f1181202316904ebe61c7617ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4723379698988a9612cdbcad3ce70a9085fc684b340c496e29610d26b6c10940",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b606fca-4c9e-f451-2a91-697038459f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem turanDensity_eq_csInf (H : SimpleGraph W) :
    turanDensity H = sInf { (extremalNumber n H / n.choose 2 : ℝ) | n ∈ Set.Ici 2 } :=
  have h := isGLB_turanDensity H
  (h.csInf_eq h.nonempty).symm

/-- The **Turán density** of a simple graph `H` is well-defined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ae7258174206f1181202316904ebe61c7617ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
