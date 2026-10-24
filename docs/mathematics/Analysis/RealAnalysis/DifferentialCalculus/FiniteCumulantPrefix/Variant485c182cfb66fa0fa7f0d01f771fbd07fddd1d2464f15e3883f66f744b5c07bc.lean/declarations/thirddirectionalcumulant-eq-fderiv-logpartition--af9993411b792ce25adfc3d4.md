# thirdDirectionalCumulant_eq_fderiv_logPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ebe45fe-9b87-966e-9c0e-a1dd99d5686d",
  "kind": "theorem",
  "lexical_name": "thirdDirectionalCumulant_eq_fderiv_logPartition",
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
  "slug": "thirddirectionalcumulant-eq-fderiv-logpartition--af9993411b792ce25adfc3d4",
  "source": {
    "blob": "819b35aef974f3c22b9f88ab1efcd788602131e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af9993411b792ce25adfc3d4dccef7926ffbc751e216ffe8913b36c7e193a266",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebe45fe-9b87-966e-9c0e-a1dd99d5686d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thirdDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 3 → E) :
    F.thirdDirectionalCumulant theta directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ (fderiv ℝ F.logPartition) x
            (directions 0) (directions 1))
        theta (directions 2) := by
  rw [thirdDirectionalCumulant]
  exact (F.third_fderiv_logPartition_eq_thirdCumulant
    theta (directions 0) (directions 1) (directions 2)).symm

/-- Order four of the prefix is the fourth Frechet derivative of log Z. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819b35aef974f3c22b9f88ab1efcd788602131e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
