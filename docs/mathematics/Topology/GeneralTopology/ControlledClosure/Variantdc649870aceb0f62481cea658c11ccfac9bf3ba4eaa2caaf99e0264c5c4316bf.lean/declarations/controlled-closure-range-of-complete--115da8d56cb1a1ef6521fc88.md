# controlled_closure_range_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62167b82502170ca8d1f02607589ec6cdedaa808",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a4dfeab-2ac2-85f9-2a33-9512131cc62d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f30e926e-eb74-c789-854d-f369a0f1080f",
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
  "slug": "controlled-closure-range-of-complete--115da8d56cb1a1ef6521fc88",
  "source": {
    "blob": "62167b82502170ca8d1f02607589ec6cdedaa808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115da8d56cb1a1ef6521fc88dd142546d41ecfd822d1341d4bb66b63da577218",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f30e926e-eb74-c789-854d-f369a0f1080f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlled_closure_range_of_complete {f : NormedAddGroupHom G H} {K : Type*}
    [SeminormedAddCommGroup K] {j : NormedAddGroupHom K H} (hj : ∀ x, ‖j x‖ = ‖x‖) {C ε : ℝ}
    (hC : 0 < C) (hε : 0 < ε) (hyp : ∀ k, ∃ g, f g = j k ∧ ‖g‖ ≤ C * ‖k‖) :
    f.SurjectiveOnWith j.range.topologicalClosure (C + ε) := by
  replace hyp : ∀ h ∈ j.range, ∃ g, f g = h ∧ ‖g‖ ≤ C * ‖h‖ := by
    intro h h_in
    rcases (j.mem_range _).mp h_in with ⟨k, rfl⟩
    rw [hj]
    exact hyp k
  exact controlled_closure_of_complete hC hε hyp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62167b82502170ca8d1f02607589ec6cdedaa808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
