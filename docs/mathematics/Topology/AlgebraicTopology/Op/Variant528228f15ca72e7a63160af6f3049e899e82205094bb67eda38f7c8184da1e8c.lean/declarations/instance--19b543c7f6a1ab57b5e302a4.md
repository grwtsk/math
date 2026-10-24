# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:837496784c62fe495a19ec7567f22847df16aaab439768832b5d0d3fbd88952b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--19b543c7f6a1ab57b5e302a4",
  "source": {
    "blob": "1354d413a4c0e794c1fcfb82c15f76ca3eeaab74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Topology/AlgebraicTopology/Op/Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19b543c7f6a1ab57b5e302a49f64790d872c3b27fd09df07e52259d22ac4ebd6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Op/Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:837496784c62fe495a19ec7567f22847df16aaab439768832b5d0d3fbd88952b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [P.IsRegular] : P.op.IsRegular where
  wf := by
    have hP := P.wf
    rw [wellFounded_iff_isEmpty_descending_chain] at hP ⊢
    by_contra!
    obtain ⟨f, hf⟩ := this
    refine hP.false ⟨fun n ↦ ⟨_, (f n).2⟩, fun n ↦ ?_⟩
    simpa [← P.op_ancestralRel_iff] using hf n

end SSet.Subcomplex.Pairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Op/Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Op/Variant528228f15ca72e7a63160af6f3049e899e82205094bb67eda38f7c8184da1e8c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1354d413a4c0e794c1fcfb82c15f76ca3eeaab74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
