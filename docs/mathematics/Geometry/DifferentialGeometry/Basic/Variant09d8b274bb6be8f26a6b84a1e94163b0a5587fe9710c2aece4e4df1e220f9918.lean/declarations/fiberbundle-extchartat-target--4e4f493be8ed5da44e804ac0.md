# FiberBundle.extChartAt_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6380f42a-9f27-073d-187e-60d2ac792af3",
  "kind": "theorem",
  "lexical_name": "FiberBundle.extChartAt_target",
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
  "slug": "fiberbundle-extchartat-target--4e4f493be8ed5da44e804ac0",
  "source": {
    "blob": "e47a08139e388c55db47130e9c2b51216bab3cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 149,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e4f493be8ed5da44e804ac00d48fd109bbd68f8ae4eed2040eff89a4facdfa7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6380f42a-9f27-073d-187e-60d2ac792af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem FiberBundle.extChartAt_target (x : TotalSpace F E) :
    (extChartAt (IB.prod 𝓘(𝕜, F)) x).target =
      ((extChartAt IB x.proj).target ∩
        (extChartAt IB x.proj).symm ⁻¹' (trivializationAt F E x.proj).baseSet) ×ˢ univ := by
  rw [FiberBundle.extChartAt, PartialEquiv.trans_target, Trivialization.target_eq, inter_prod]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47a08139e388c55db47130e9c2b51216bab3cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
