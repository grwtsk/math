# fourthDirectionalCumulant_eq_fderiv_logPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f4246f65869281ae397818cd305ad1ff084e4d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9112761f-d60a-1bd2-bb6b-557377bbc397",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e8fb684-d942-743c-d056-6f0026f148ba",
  "kind": "theorem",
  "lexical_name": "fourthDirectionalCumulant_eq_fderiv_logPartition",
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
  "slug": "fourthdirectionalcumulant-eq-fderiv-logpartition--f0492c29aded8227eb98e906",
  "source": {
    "blob": "4f4246f65869281ae397818cd305ad1ff084e4d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0492c29aded8227eb98e9064cccb610cc3d617aeb6dacc97baea34d83e8bbc4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e8fb684-d942-743c-d056-6f0026f148ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourthDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 4 → E) :
    F.fourthDirectionalCumulant theta directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ
            (fun y =>
              fderiv ℝ (fderiv ℝ F.logPartition) y
                (directions 0) (directions 1))
            x (directions 2))
        theta (directions 3) := by
  rw [fourthDirectionalCumulant]
  exact (F.fourth_fderiv_logPartition_eq_fourthCumulant
    theta (directions 0) (directions 1) (directions 2) (directions 3)).symm

/-- The block-reindexing API evaluates the verified prefix by applying the
appropriate order entry to the canonical block directions. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f4246f65869281ae397818cd305ad1ff084e4d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
