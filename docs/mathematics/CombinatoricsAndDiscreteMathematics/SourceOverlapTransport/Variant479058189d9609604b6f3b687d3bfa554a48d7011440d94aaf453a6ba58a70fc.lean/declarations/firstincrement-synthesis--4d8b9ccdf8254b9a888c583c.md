# firstIncrement_synthesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3cb6146-21a7-8e13-b384-a8355496fa1c",
  "kind": "theorem",
  "lexical_name": "firstIncrement_synthesis",
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
  "slug": "firstincrement-synthesis--4d8b9ccdf8254b9a888c583c",
  "source": {
    "blob": "2735a9614083f6df5069ee993a7a6e96ba3780ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8b9ccdf8254b9a888c583c7aa438c3aac72d863eeaf3d7b396e0b2480e4383",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3cb6146-21a7-8e13-b384-a8355496fa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstIncrement_synthesis (q : ComplexL2) (A B : ℝ) :
    synthesis q (longInventory B) (firstIncrement A B) =
      finiteProfile q (longInventory B \ longInventory A) false false
        mangoldtCoefficient := by
  unfold firstIncrement firstAt transportAt mangoldtCoordinates
  rw [synthesis_coefficient_increment]
  simp [finiteProfile]

/-- The centered increment includes the exact cutoff-driven coefficient change
on retained labels as well as the newly included centered rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2735a9614083f6df5069ee993a7a6e96ba3780ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
