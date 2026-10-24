# range_weylGroup_coweightHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7491e9b90cb78c2d12bc65f3e0c0cc2923c361a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49fa108d-d877-0dc6-35b5-51a9a55fd3b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb59c928-83db-ccbb-3a0b-d1614362e686",
  "kind": "lemma",
  "lexical_name": "range_weylGroup_coweightHom",
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
  "slug": "range-weylgroup-coweighthom--f299af5db760012022052960",
  "source": {
    "blob": "7491e9b90cb78c2d12bc65f3e0c0cc2923c361a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f299af5db760012022052960b07238c472880e86dd5260d7111b06ea68be5ec3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb59c928-83db-ccbb-3a0b-d1614362e686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_weylGroup_coweightHom :
    MonoidHom.range ((Equiv.coweightHom P).restrict P.weylGroup) =
      Subgroup.closure (range (MulOpposite.op ∘ P.coreflection)) := by
  refine (Subgroup.closure_eq_of_le _ ?_ ?_).symm
  · rintro - ⟨i, rfl⟩
    simp only [MonoidHom.restrict_range, Subgroup.coe_map, Equiv.weightHom_apply, mem_image,
      SetLike.mem_coe]
    use Equiv.reflection P i
    refine ⟨reflection_mem_weylGroup P i, by simp⟩
  · rintro fg ⟨⟨w, hw⟩, rfl⟩
    induction hw using Subgroup.closure_induction'' with
    | one =>
      change ((Equiv.coweightHom P).restrict P.weylGroup) 1 ∈ _
      simpa only [map_one] using Subgroup.one_mem _
    | mem w' hw' =>
      obtain ⟨i, rfl⟩ := hw'
      simp only [MonoidHom.restrict_apply, Equiv.coweightHom_apply, Equiv.reflection_coweightEquiv]
      simpa only [reflection_mem_weylGroup] using Subgroup.subset_closure (mem_range_self i)
    | inv_mem w' hw' =>
      obtain ⟨i, rfl⟩ := hw'
      simp only [Equiv.reflection_inv, MonoidHom.restrict_apply, Equiv.coweightHom_apply,
        Equiv.reflection_coweightEquiv]
      simpa only [reflection_mem_weylGroup] using Subgroup.subset_closure (mem_range_self i)
    | mul w₁ w₂ hw₁ hw₂ h₁ h₂ =>
      simpa only [← Submonoid.mk_mul_mk _ w₁ w₂ hw₁ hw₂, map_mul] using Subgroup.mul_mem _ h₁ h₂

/-- The permutation representation of the Weyl group induced by `reflection_perm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant8a581bd1f491401815f4ca4b45566ee376828649e0e27340d97d94131dc6766b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7491e9b90cb78c2d12bc65f3e0c0cc2923c361a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
