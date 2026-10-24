# exists_cycle_and_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02308219aad0658167bb756fd418a815bb7e261d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/Geometry/Hodge/RationalCycleCellular.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24db3ce6-0ef2-55c5-81c9-4fa539fb830d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8035ca2b-e7e7-9cf0-dbbe-496c109e5077",
  "kind": "theorem",
  "lexical_name": "exists_cycle_and_harmonic",
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
  "slug": "exists-cycle-and-harmonic--2405c0aae01d77a9521d0c2d",
  "source": {
    "blob": "02308219aad0658167bb756fd418a815bb7e261d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/Geometry/Hodge/RationalCycleCellular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2405c0aae01d77a9521d0c2db61ed409a86bfaac9f6a2aa1a37ad355a351522f",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/RationalCycleCellular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8035ca2b-e7e7-9cf0-dbbe-496c109e5077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_cycle_and_harmonic
    (G : RationalHodgeCellularAdapter (CellClass := CellClass) H C₀ C₁ A) (h : HodgeClass) :
    ∃ z : Cycle,
      H.cycleClass z = h ∧
      G.comparison.cycleToCell z = G.comparison.hodgeToCell h ∧
      A.IsHarmonic0
        (G.harmonicRealization.representative (G.comparison.hodgeToCell h)) := by
  obtain ⟨z, hz⟩ := G.globalTheorem.surjective h
  refine ⟨z, hz, ?_, G.harmonicRealization.harmonic _⟩
  rw [CycleCellularComparison.cycleToCell_apply, hz]

end RationalHodgeCellularAdapter

namespace Examples

/-- A one-dimensional exact fixture for the entire adapter chain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/RationalCycleCellular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/RationalCycleCellular.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02308219aad0658167bb756fd418a815bb7e261d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
