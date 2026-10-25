# replay_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14496719-ffee-1722-ccd5-64ec14ef2a1f",
  "kind": "theorem",
  "lexical_name": "replay_reachable",
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
  "slug": "replay-reachable--ac576cdcf10095358ebbd81c",
  "source": {
    "blob": "6d1286fc23702ccda5c1e5a375a812a517acf19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac576cdcf10095358ebbd81ca2f3ef7ee491f6d8d1dff3b65e9ae7123e7e1504",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14496719-ffee-1722-ccd5-64ec14ef2a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_reachable (s : ObservationState) (observations : List Observation)
    (tags : ∀ observation ∈ observations, observation.operation = recordObservationTag) :
    Reachable (CoreMeaning := coreMeaning) (realize s) (realize (replay s observations)) := by
  induction observations generalizing s with
  | nil => exact .initial
  | cons observation observations ih =>
      have edge : Change coreMeaning (realize s) (realize (recordObservation s observation)) :=
        admitted_change ⟨tags observation (by simp), rfl⟩
      have rest := ih (recordObservation s observation) (by
        intro other member
        exact tags other (by simp [member]))
      have first : Reachable (CoreMeaning := coreMeaning) (realize s)
          (realize (recordObservation s observation)) := .next .initial edge
      change Reachable (CoreMeaning := coreMeaning) (realize s)
        (realize (replay (recordObservation s observation) observations))
      exact reachable_trans first rest

/-- Admission of concrete replay endpoints supplies reachability between them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1286fc23702ccda5c1e5a375a812a517acf19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
