# timing_unavailable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a793735a-2ee3-6277-edeb-bbc3e221fd50",
  "kind": "theorem",
  "lexical_name": "timing_unavailable_iff",
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
  "slug": "timing-unavailable-iff--2e4d3a781eea9571e7059122",
  "source": {
    "blob": "43794780f6b098aae07889a9214c0b52c50b5895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e4d3a781eea9571e7059122409717d8352ef04a1bd36245a78b5d24900bc947",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a793735a-2ee3-6277-edeb-bbc3e221fd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem timing_unavailable_iff [DecidableEq Kind] (state : State Kind Payload)
    (revision : Nat) (kind : Kind) (target : Nat) :
    timing state revision kind target = .unavailable ↔
      query state revision kind = [] := by
  constructor
  · intro result
    cases first : earliestTick state revision kind with
    | none => exact (earliestTick_none_iff state revision kind).mp first
    | some tick =>
        unfold timing at result
        rw [first] at result
        change (if tick ≤ target then Timing.byTarget else Timing.afterTarget) =
          Timing.unavailable at result
        by_cases within : tick ≤ target
        · rw [if_pos within] at result
          cases result
        · rw [if_neg within] at result
          cases result
  · intro absent
    unfold timing
    rw [(earliestTick_none_iff state revision kind).mpr absent]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43794780f6b098aae07889a9214c0b52c50b5895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
