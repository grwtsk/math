# step_eq_rowCombo_self_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4e884d0-a28e-97fe-56cb-63799a8b6875",
  "kind": "lemma",
  "lexical_name": "step_eq_rowCombo_self_step",
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
  "slug": "step-eq-rowcombo-self-step--ef8fc2168787a02e8c8ae6ab",
  "source": {
    "blob": "0ec355513dc2e1bb509bb9e7bd38c8c35c3f8178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef8fc2168787a02e8c8ae6ab2a0a04729230d70f65d33c0a9f2eabb42bba24bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4e884d0-a28e-97fe-56cb-63799a8b6875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma step_eq_rowCombo_self_step (t u : ℚ) (p : ControlRow M) :
    step (t * u) p = rowCombo t p (step u p) := by
  funext i
  simp only [step, rowCombo]
  module

/-- Left subdivision controls: the first point at each level of the de
Casteljau triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variant227e69a5a9878f35dc48e2b076a1dd1f710b83b0e88cd9fe4e1ab5c974ca68cc.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec355513dc2e1bb509bb9e7bd38c8c35c3f8178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
