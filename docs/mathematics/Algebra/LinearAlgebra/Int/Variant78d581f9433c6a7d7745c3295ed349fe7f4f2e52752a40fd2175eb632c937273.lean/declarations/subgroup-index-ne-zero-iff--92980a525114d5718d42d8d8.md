# subgroup_index_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09d97ad3b4fcb3f2bd724723d27dcf6ac9badc46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:325df9d3-218e-48c4-8967-bbb6c7e3f209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47c4949d-cad5-2112-dd6e-a15a05cb9ff6",
  "kind": "lemma",
  "lexical_name": "subgroup_index_ne_zero_iff",
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
  "slug": "subgroup-index-ne-zero-iff--92980a525114d5718d42d8d8",
  "source": {
    "blob": "09d97ad3b4fcb3f2bd724723d27dcf6ac9badc46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92980a525114d5718d42d8d8a136ce3fd1cdaf450f9ea3f54cf6f04eb8e8d004",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c4949d-cad5-2112-dd6e-a15a05cb9ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subgroup_index_ne_zero_iff {H : Subgroup (ι → Multiplicative ℤ)} :
    H.index ≠ 0 ↔ Nonempty (H ≃* (ι → Multiplicative ℤ)) := by
  let em : Multiplicative (ι → ℤ) ≃* (ι → Multiplicative ℤ) :=
    MulEquiv.funMultiplicative _ _
  let H' : Subgroup (Multiplicative (ι → ℤ)) := H.comap em
  let eH' : H' ≃* H := (MulEquiv.subgroupCongr <| Subgroup.comap_equiv_eq_map_symm em H).trans
    (MulEquiv.subgroupMap em.symm _).symm
  have h : H'.index = H.index := Subgroup.index_comap_of_surjective _ em.surjective
  rw [← h, ← Subgroup.index_toAddSubgroup, addSubgroup_index_ne_zero_iff]
  exact ⟨fun ⟨e⟩ ↦ ⟨(eH'.symm.trans (AddEquiv.toMultiplicative e)).trans em⟩,
    fun ⟨e⟩ ↦ ⟨(MulEquiv.toAdditive ((eH'.trans e).trans em.symm)).trans
      (AddEquiv.additiveMultiplicative _)⟩⟩

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d97ad3b4fcb3f2bd724723d27dcf6ac9badc46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
