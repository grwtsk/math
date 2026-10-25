# projective_invariant_law_projects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d789a689e00c4c4e4da7ba77ffc6e5a7987b8804",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62e1fd14-e8ba-b4fe-efb8-6b21510a83d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5dfaf1f-b40c-7789-201a-e0e8a1df7a2d",
  "kind": "theorem",
  "lexical_name": "projective_invariant_law_projects",
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
  "slug": "projective-invariant-law-projects--63ea21f5a536c72241cdbb39",
  "source": {
    "blob": "d789a689e00c4c4e4da7ba77ffc6e5a7987b8804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ea21f5a536c72241cdbb390bef5b8c7e4e3b5c1efc40fdaa1699cea4bf32fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5dfaf1f-b40c-7789-201a-e0e8a1df7a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_invariant_law_projects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    {high low : Nat}
    (low_le : low ≤ high) :
    system.projectLaw low_le
        (system.cut high).closure.dynamics.invariantLaw =
      (system.cut low).closure.dynamics.invariantLaw := by
  apply
    (system.cut low).closure.dynamics.invariantLaw_unique
  intro schedule
  calc
    (system.cut low).closure.lawCarrier.push
        ((system.cut low).closure.dynamics.kernel
          schedule)
        (system.projectLaw low_le
          (system.cut high).closure.dynamics.invariantLaw) =
      (system.cut low).closure.lawCarrier.push
        ((system.cut low).closure.dynamics.kernel
          (system.restrictSchedule low_le
            (system.liftSchedule low_le schedule)))
        (system.projectLaw low_le
          (system.cut high).closure.dynamics.invariantLaw) := by
            rw [system.restrict_lift low_le schedule]
    _ =
      system.projectLaw low_le
        ((system.cut high).closure.lawCarrier.push
          ((system.cut high).closure.dynamics.kernel
            (system.liftSchedule low_le schedule))
          (system.cut high).closure.dynamics.invariantLaw) :=
        (system.kernelCompatible
          low_le
          (system.liftSchedule low_le schedule)
          (system.cut high).closure.dynamics.invariantLaw).symm
    _ =
      system.projectLaw low_le
        (system.cut high).closure.dynamics.invariantLaw := by
          rw [(system.cut high).closure.dynamics.commonInvariant]

end Mathematics.StratifiedBoundary.Boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d789a689e00c4c4e4da7ba77ffc6e5a7987b8804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
