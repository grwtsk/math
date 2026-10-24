# positive_sensitivity_implies_positive_gap_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93e7f8bf72c0b5486fba44c60424d9c08694ff15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9aea865c-eead-5dd5-d7c3-27d1fc4d8824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fc15784-24bf-036e-24cb-b5ece43bfe76",
  "kind": "theorem",
  "lexical_name": "positive_sensitivity_implies_positive_gap_of_complete",
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
  "slug": "positive-sensitivity-implies-positive-gap-of-complete--bc9103bf878791ab10b6be4c",
  "source": {
    "blob": "93e7f8bf72c0b5486fba44c60424d9c08694ff15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9103bf878791ab10b6be4c6a1d07b27f47b459d4f8896be377eb3844f5fdb2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fc15784-24bf-036e-24cb-b5ece43bfe76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_sensitivity_implies_positive_gap_of_complete
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X)
    (hcomplete : C.ComparatorCompleteFor Q I)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < Q.comparatorGap I x := by
  have hvisible :=
    (C.interventionSensitivity_pos_iff_visible I x).1 hsensitivity
  exact C.comparatorGap_pos_of_sectorComplete_detects Q I x
    hcomplete.1 (hcomplete.2 x hvisible)

/-- Even sector-completeness alone does not bridge sensitivity to separation:
the zero comparator factors through the (+,-) sector but has zero gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e7f8bf72c0b5486fba44c60424d9c08694ff15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
