# reduce_eq_implies_localCausalEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f36d6ccf11adda3d4132499314d87f118085a215",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26cc0edb-7fc5-4dd2-b962-539f5018647f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0702b9e9-8377-355c-ba7e-484725861f11",
  "kind": "theorem",
  "lexical_name": "reduce_eq_implies_localCausalEquivalent",
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
  "slug": "reduce-eq-implies-localcausalequivalent--ca11e7484593ac7a87aae7b8",
  "source": {
    "blob": "f36d6ccf11adda3d4132499314d87f118085a215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca11e7484593ac7a87aae7b89203f326ee6ccb7d9aa55f92728e7913b0effcd7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0702b9e9-8377-355c-ba7e-484725861f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_eq_implies_localCausalEquivalent
    (R : ObserverReducer M ρ)
    {x y : State}
    (h : R.reduce x = R.reduce y) :
    LocalCausalEquivalent M ρ x y := by
  intro inputs
  calc
    M.observe ρ (M.run inputs x) =
        R.localObserve (R.reduce (M.run inputs x)) :=
      (R.observe_commute _).symm
    _ = R.localObserve (R.run inputs (R.reduce x)) := by
      rw [R.reduce_run]
    _ = R.localObserve (R.run inputs (R.reduce y)) := by
      rw [h]
    _ = R.localObserve (R.reduce (M.run inputs y)) := by
      rw [R.reduce_run]
    _ = M.observe ρ (M.run inputs y) := R.observe_commute _

/-- The canonical localState class represented by a realized reducer state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f36d6ccf11adda3d4132499314d87f118085a215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
