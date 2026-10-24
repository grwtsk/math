# sum_eq_zero_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bd64b0593d3a6d9246adfd8c4283255d9d8ea85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6815c3c5-14bc-b499-9076-b7177403378a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f378ca40-0a74-167a-e99e-414919502295",
  "kind": "theorem",
  "lexical_name": "sum_eq_zero_of_ne_one",
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
  "slug": "sum-eq-zero-of-ne-one--1d9703387439a567461cb4f3",
  "source": {
    "blob": "1bd64b0593d3a6d9246adfd8c4283255d9d8ea85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9703387439a567461cb4f3b282858aa306b19b348bb124600047321fc6b4f7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f378ca40-0a74-167a-e99e-414919502295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_zero_of_ne_one [IsDomain R'] {ψ : AddChar R R'} (hψ : ψ ≠ 1) : ∑ a, ψ a = 0 := by
  rcases ne_one_iff.1 hψ with ⟨b, hb⟩
  have h₁ : ∑ a : R, ψ (b + a) = ∑ a : R, ψ a :=
    Fintype.sum_bijective _ (AddGroup.addLeft_bijective b) _ _ fun x => rfl
  simp_rw [map_add_eq_mul] at h₁
  have h₂ : ∑ a : R, ψ a = Finset.univ.sum ↑ψ := rfl
  rw [← Finset.mul_sum, h₂] at h₁
  exact eq_zero_of_mul_eq_self_left hb h₁

/-- The sum over the values of the trivial additive character is the cardinality of the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd64b0593d3a6d9246adfd8c4283255d9d8ea85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
