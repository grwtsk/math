# controlled_closure_range_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42075d9c-82d7-d85c-18ee-3dedeee02bb5",
  "kind": "theorem",
  "lexical_name": "controlled_closure_range_of_complete",
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
  "slug": "controlled-closure-range-of-complete--a23b0b342ecdb6a37149e08a",
  "source": {
    "blob": "4dbb501befdde48023e7fb858cac320fa345fcef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23b0b342ecdb6a37149e08ac0f045c2016f2728ee11595d4aa6451fd743e3b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42075d9c-82d7-d85c-18ee-3dedeee02bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlled_closure_range_of_complete {f : NormedAddGroupHom G H} {K : Type*}
    [SeminormedAddCommGroup K] {j : NormedAddGroupHom K H} (hj : ∀ x, ‖j x‖ = ‖x‖) {C ε : ℝ}
    (hC : 0 < C) (hε : 0 < ε) (hyp : ∀ k, ∃ g, f g = j k ∧ ‖g‖ ≤ C * ‖k‖) :
    f.SurjectiveOnWith j.range.topologicalClosure (C + ε) := by
  replace hyp : ∀ h ∈ j.range, ∃ g, f g = h ∧ ‖g‖ ≤ C * ‖h‖
  · intro h h_in
    rcases(j.mem_range _).mp h_in with ⟨k, rfl⟩
    rw [hj]
    exact hyp k
  exact controlled_closure_of_complete hC hε hyp
#align controlled_closure_range_of_complete controlled_closure_range_of_complete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dbb501befdde48023e7fb858cac320fa345fcef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
