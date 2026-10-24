# MatchesFiniteCumulantPrefix4.order3_eq_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fc27998-cb49-a198-a714-86ea64f6275b",
  "kind": "theorem",
  "lexical_name": "MatchesFiniteCumulantPrefix4.order3_eq_fderiv",
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
  "slug": "matchesfinitecumulantprefix4-order3-eq-fderiv--60ba2e44f66b8db8040477bf",
  "source": {
    "blob": "cf200c24c23a41e5576b62056e313b39a9b84711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Varianta3ce2d61b9acbb64a55d4a22e3db36ece3ed64610cdbdf8dcc83a9ba59e1576a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60ba2e44f66b8db8040477bf50be8679c358dddf1cda4ae28d36d4684550c1ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Varianta3ce2d61b9acbb64a55d4a22e3db36ece3ed64610cdbdf8dcc83a9ba59e1576a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc27998-cb49-a198-a714-86ea64f6275b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MatchesFiniteCumulantPrefix4.order3_eq_fderiv
    {theta : E}
    {κ : DirectionCumulantFamily E ℝ}
    (h : MatchesFiniteCumulantPrefix4 F theta κ)
    (directions : Fin 3 → E) :
    κ 3 directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ (fderiv ℝ F.logPartition) x
            (directions 0) (directions 1))
        theta (directions 2) := by
  rw [h.order3 directions,
    F.thirdDirectionalCumulant_eq_fderiv_logPartition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Varianta3ce2d61b9acbb64a55d4a22e3db36ece3ed64610cdbdf8dcc83a9ba59e1576a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Varianta3ce2d61b9acbb64a55d4a22e3db36ece3ed64610cdbdf8dcc83a9ba59e1576a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf200c24c23a41e5576b62056e313b39a9b84711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
