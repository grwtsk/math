# TracesBoundsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92c0f4e8ff862efa78ff95d404730882d99d11dd66775bfdaa008d6f6c873866",
  "kind": "structure",
  "lexical_name": "TracesBoundsChi",
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
  "slug": "tracesboundschi--8aaef1f16122b4ed50f18e81",
  "source": {
    "blob": "c8dfa95eeb6b427582bfac10cceaa16f7400d322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8aaef1f16122b4ed50f18e81ea28c53383b43dea6275d5cbf5f136f8e501d69b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92c0f4e8ff862efa78ff95d404730882d99d11dd66775bfdaa008d6f6c873866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracesBoundsChi (aT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T)
    (fun T => P.L T * Real.sqrt (P.X T))
  tr1' : EvBound (fun T => trG T - P.L T * Ncnt T) (fun T => P.calE T * (P.L T * Ncnt T))
  tr2 : EvBound (fun T => trG2 T - mainTr2Chi P q T) (fun T => P.calE T * mainTr2Chi P q T)
  ratio : EvBound (fun T => trG T ^ 2 / trG2 T - Ffun (lam1q P q T) * Ncnt T)
    (fun T => P.calE T * (Ffun (lam1q P q T) * Ncnt T))

/-- The Theorem E traces hypothesis at a zero configuration Z (the analogue of `Zeta23.ThmTracesHyp`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8dfa95eeb6b427582bfac10cceaa16f7400d322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
