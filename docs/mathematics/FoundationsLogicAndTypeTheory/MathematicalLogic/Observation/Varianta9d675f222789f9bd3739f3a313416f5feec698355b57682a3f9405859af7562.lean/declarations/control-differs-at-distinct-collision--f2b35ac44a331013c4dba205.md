# control_differs_at_distinct_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bef570b3-9d4d-a023-567b-4b61c8217fe7",
  "kind": "theorem",
  "lexical_name": "control_differs_at_distinct_collision",
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
  "slug": "control-differs-at-distinct-collision--f2b35ac44a331013c4dba205",
  "source": {
    "blob": "f8b89f16ba28c33b79a4be00984c07fd94aea882",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Varianta9d675f222789f9bd3739f3a313416f5feec698355b57682a3f9405859af7562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b35ac44a331013c4dba2056ead45a5de091e0764462f9ac6c67cb7f1f5e435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Varianta9d675f222789f9bd3739f3a313416f5feec698355b57682a3f9405859af7562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bef570b3-9d4d-a023-567b-4b61c8217fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem control_differs_at_distinct_collision
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (hSeparating : Separating O)
    {x y : Entity}
    (hProject : O.project x = O.project y)
    (hDistinct : x ≠ y) :
    O.control x ≠ O.control y := by
  intro hControl
  exact hDistinct (hSeparating x y hProject hControl)

/-- Observation commutes with one explicitly designated binary operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Varianta9d675f222789f9bd3739f3a313416f5feec698355b57682a3f9405859af7562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Varianta9d675f222789f9bd3739f3a313416f5feec698355b57682a3f9405859af7562.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8b89f16ba28c33b79a4be00984c07fd94aea882` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
