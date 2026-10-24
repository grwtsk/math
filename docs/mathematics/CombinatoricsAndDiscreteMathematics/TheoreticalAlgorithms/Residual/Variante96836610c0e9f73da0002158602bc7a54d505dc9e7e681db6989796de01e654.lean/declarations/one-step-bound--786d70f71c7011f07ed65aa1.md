# one_step_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b014eef-0ef2-7a75-6899-a55efb110138",
  "kind": "theorem",
  "lexical_name": "one_step_bound",
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
  "slug": "one-step-bound--786d70f71c7011f07ed65aa1",
  "source": {
    "blob": "fcec8ea32e7017477c3b1401cffa600365dc92dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:786d70f71c7011f07ed65aa1f15addd118975e24ba3e97135abd850bf20b42ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b014eef-0ef2-7a75-6899-a55efb110138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_step_bound
    (step : ApproximationStep X)
    {xApprox xReference : X} {initial : ℝ≥0}
    (hInitial : nndist xApprox xReference ≤ initial) :
    nndist (step.implementation xApprox) (step.reference xReference) ≤
      step.lipschitz * initial + step.localError := by
  calc
    nndist (step.implementation xApprox) (step.reference xReference)
        ≤ nndist (step.implementation xApprox) (step.reference xApprox) +
            nndist (step.reference xApprox) (step.reference xReference) :=
          nndist_triangle _ _ _
    _ ≤ step.localError + step.lipschitz * nndist xApprox xReference :=
          add_le_add (step.localSound xApprox)
            (step.referenceLipschitz.nndist_le xApprox xReference)
    _ ≤ step.localError + step.lipschitz * initial := by
          exact add_le_add_left
            (mul_le_mul_left' hInitial step.lipschitz) step.localError
    _ = step.lipschitz * initial + step.localError := add_comm _ _

/-- Chronological exact/reference execution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec8ea32e7017477c3b1401cffa600365dc92dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
