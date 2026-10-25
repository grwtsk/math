# loopless_iff_forall_isCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987c5e74-7706-3347-c7c5-edb471e134d3",
  "kind": "lemma",
  "lexical_name": "loopless_iff_forall_isCircuit",
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
  "slug": "loopless-iff-forall-iscircuit--e7736133e3152015e22e867e",
  "source": {
    "blob": "442cc92b4a3184df576c8466142c6a3eba4e1c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 815,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7736133e3152015e22e867e8f3bed289cac6920fce1810976f7b378c650f462",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987c5e74-7706-3347-c7c5-edb471e134d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma loopless_iff_forall_isCircuit : M.Loopless ↔ ∀ C, M.IsCircuit C → C.Nontrivial := by
  suffices (∃ x ∈ M.E, M.IsLoop x) ↔ ∃ x, M.IsCircuit x ∧ x.Subsingleton by
    rw [loopless_iff_forall_not_isLoop]
    contrapose!
    exact this
  refine ⟨fun ⟨e, _, he⟩ ↦ ⟨{e}, he.isCircuit, by simp⟩, fun ⟨C, hC, hCs⟩ ↦ ?_⟩
  obtain (rfl | ⟨e, rfl⟩) := hCs.eq_empty_or_singleton
  · simpa using hC.nonempty
  exact ⟨e, (singleton_isCircuit.1 hC).mem_ground, singleton_isCircuit.1 hC⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442cc92b4a3184df576c8466142c6a3eba4e1c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
