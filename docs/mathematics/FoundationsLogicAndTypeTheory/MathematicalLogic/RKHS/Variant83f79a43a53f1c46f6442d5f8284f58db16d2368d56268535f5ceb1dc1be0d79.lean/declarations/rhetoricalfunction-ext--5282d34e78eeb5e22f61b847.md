# rhetoricalFunction_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:842c7c14-5a6f-bc5d-ec56-8703ca590578",
  "kind": "theorem",
  "lexical_name": "rhetoricalFunction_ext",
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
  "slug": "rhetoricalfunction-ext--5282d34e78eeb5e22f61b847",
  "source": {
    "blob": "1d99db2b104b697eace7448356776b2e82d0329c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5282d34e78eeb5e22f61b847f8d403c4651abe496f78c8e81562b194f74c25ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:842c7c14-5a6f-bc5d-ec56-8703ca590578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhetoricalFunction_ext
    {left right : RhetoricalFunction kernel}
    (equalAt : ∀ index, left index = right index) :
    left = right := by
  have denseSpan : Dense ((rhetoricalSpan kernel : Set
      (RhetoricalSpace kernel))) :=
    Submodule.dense_iff_topologicalClosure_eq_top.mpr
      (rhetoricalVector_denseSpan kernel)
  apply denseSpan.eq_of_inner_right ℂ
  intro vector vectorMem
  change vector ∈ rhetoricalSpan kernel at vectorMem
  refine Submodule.span_induction ?_ ?_ ?_ ?_ vectorMem
  · intro generator generatorMem
    obtain ⟨index, rfl⟩ := generatorMem
    exact equalAt index
  · simp
  · intro leftVector rightVector _ _ leftEqual rightEqual
    simp only [inner_add_left, leftEqual, rightEqual]
  · intro scalar vector _ vectorEqual
    simp only [inner_smul_left, vectorEqual]

/-- Evaluation is injective, so no vector is hidden by the function-space
presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d99db2b104b697eace7448356776b2e82d0329c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
