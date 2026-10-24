# IsThreeCycle.alternating_normalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b4072c6-86e1-4d9a-e99e-3e65d5c0428e",
  "kind": "theorem",
  "lexical_name": "IsThreeCycle.alternating_normalClosure",
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
  "slug": "isthreecycle-alternating-normalclosure--2e661b9f8bf886f66b64ab33",
  "source": {
    "blob": "0fec68f0f822f0bf9b60b946d0046cdc6f807a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 183,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e661b9f8bf886f66b64ab3346e52d450c0897ac18b50a3fb61da87bff2ac99b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b4072c6-86e1-4d9a-e99e-3e65d5c0428e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsThreeCycle.alternating_normalClosure (h5 : 5 ≤ Fintype.card α) {f : Perm α}
    (hf : IsThreeCycle f) :
    normalClosure ({⟨f, hf.mem_alternatingGroup⟩} : Set (alternatingGroup α)) = ⊤ :=
  eq_top_iff.2
    (by
      have hi : Function.Injective (alternatingGroup α).subtype := Subtype.coe_injective
      refine' eq_top_iff.1 (map_injective hi (le_antisymm (map_mono le_top) _))
      rw [← MonoidHom.range_eq_map, subtype_range, normalClosure, MonoidHom.map_closure]
      refine' (le_of_eq closure_three_cycles_eq_alternating.symm).trans (closure_mono _)
      intro g h
      obtain ⟨c, rfl⟩ := isConj_iff.1 (isConj_iff_cycleType_eq.2 (hf.trans h.symm))
      refine' ⟨⟨c * f * c⁻¹, h.mem_alternatingGroup⟩, _, rfl⟩
      rw [Group.mem_conjugatesOfSet_iff]
      exact ⟨⟨f, hf.mem_alternatingGroup⟩, Set.mem_singleton _, isThreeCycle_isConj h5 hf h⟩)
#align equiv.perm.is_three_cycle.alternating_normal_closure Equiv.Perm.IsThreeCycle.alternating_normalClosure

/-- Part of proving $A_5$ is simple. Shows that the square of any element of $A_5$ with a 3-cycle in
  its cycle decomposition is a 3-cycle, so the normal closure of the original element must be
  $A_5$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fec68f0f822f0bf9b60b946d0046cdc6f807a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
