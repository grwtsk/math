# lastStep_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbc31283-a60c-40c7-beb9-3b3169d767c2",
  "kind": "theorem",
  "lexical_name": "lastStep_nonempty",
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
  "slug": "laststep-nonempty--9a69d1b8a23ceacb6f53b73c",
  "source": {
    "blob": "48bdc7ff9eda025caa69372f97de9e37a2f46ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a69d1b8a23ceacb6f53b73c6a971fa22cc6723af99bc3c70c8f30bfba430eab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbc31283-a60c-40c7-beb9-3b3169d767c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lastStep_nonempty :
    {i | ¬∃ b : β, p.c b ∉ p.iUnionUpTo i ∧ p.R i ≤ p.τ * p.r b}.Nonempty := by
  by_contra h
  suffices H : Function.Injective p.index from not_injective_of_ordinal p.index H
  intro x y hxy
  wlog x_le_y : x ≤ y generalizing x y
  · exact (this hxy.symm (le_of_not_ge x_le_y)).symm
  rcases eq_or_lt_of_le x_le_y with (rfl | H); · rfl
  simp only [nonempty_def, not_exists, exists_prop, not_and, not_lt, not_le, mem_ofPred_eq,
    not_forall] at h
  specialize h y
  have A : p.c (p.index y) ∉ p.iUnionUpTo y := by
    have :
        p.index y =
          Classical.epsilon fun b : β => p.c b ∉ p.iUnionUpTo y ∧ p.R y ≤ p.τ * p.r b := by
      rw [TauPackage.index]; rfl
    rw [this]
    exact (Classical.epsilon_spec h).1
  simp only [iUnionUpTo, not_exists, exists_prop, mem_iUnion, not_and,
    Subtype.exists] at A
  specialize A x H
  replace A : p.r (p.index y) ≤ 0 := by simpa [hxy] using A
  exact (lt_irrefl _ ((p.rpos (p.index y)).trans_le A)).elim

/-- Every point is covered by chosen balls, before `p.lastStep`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bdc7ff9eda025caa69372f97de9e37a2f46ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
