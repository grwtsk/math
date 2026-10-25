# reachability_does_not_entail_authorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8075d124-86c9-8061-3625-9d84b5250b3b",
  "kind": "theorem",
  "lexical_name": "reachability_does_not_entail_authorization",
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
  "slug": "reachability-does-not-entail-authorization--00376d0d9ec283668cc9d556",
  "source": {
    "blob": "94ce3beba4d8fa9b018a17933ac98faec3d2c743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00376d0d9ec283668cc9d5562810c8b44c4d50f510b1fbdbe24e1590bbfbd0e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8075d124-86c9-8061-3625-9d84b5250b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reachability_does_not_entail_authorization :
    ¬ (∀ a : AdmissibilityRecord,
      a.reachability = .established → a.authorization = .established) := by
  intro h
  let a : AdmissibilityRecord := {
    target := ⟨1⟩
    reachability := .established
    authorization := .notEvaluated
    safety := .notEvaluated
    correctness := .notEvaluated
    usefulness := .notEvaluated
    ethicalAcceptability := .notEvaluated
    policy := ⟨1⟩
    residuals := ∅
  }
  have := h a rfl
  cases this

/-- Reachability alone does not entail full admissibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ce3beba4d8fa9b018a17933ac98faec3d2c743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
