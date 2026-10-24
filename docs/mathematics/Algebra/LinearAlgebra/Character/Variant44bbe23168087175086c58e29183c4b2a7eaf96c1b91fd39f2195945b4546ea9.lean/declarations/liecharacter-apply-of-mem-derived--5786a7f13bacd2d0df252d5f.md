# lieCharacter_apply_of_mem_derived

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e71880b1f10b6474bdeef537c23cc7ea92da7289",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9573a658-c829-0507-f841-717153d36c19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:317259cd-9834-3864-18e5-e2d738e5cdf4",
  "kind": "theorem",
  "lexical_name": "lieCharacter_apply_of_mem_derived",
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
  "slug": "liecharacter-apply-of-mem-derived--5786a7f13bacd2d0df252d5f",
  "source": {
    "blob": "e71880b1f10b6474bdeef537c23cc7ea92da7289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5786a7f13bacd2d0df252d5f4580678ad534018cbbc96cd3cd0bfdf946105a32",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:317259cd-9834-3864-18e5-e2d738e5cdf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lieCharacter_apply_of_mem_derived (χ : LieCharacter R L) {x : L}
    (h : x ∈ derivedSeries R L 1) : χ x = 0 := by
  rw [derivedSeries_def, derivedSeriesOfIdeal_succ, derivedSeriesOfIdeal_zero, ←
    LieSubmodule.mem_toSubmodule, LieSubmodule.lieIdeal_oper_eq_linear_span] at h
  refine Submodule.span_induction ?_ ?_ ?_ ?_ h
  · rintro y ⟨⟨z, hz⟩, ⟨⟨w, hw⟩, rfl⟩⟩; apply lieCharacter_apply_lie
  · exact χ.map_zero
  · intro y z _ _ hy hz; rw [LieHom.map_add, hy, hz, add_zero]
  · intro t y _ hy; rw [LieHom.map_smul, hy, smul_zero]

/-- For an Abelian Lie algebra, characters are just linear forms. -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71880b1f10b6474bdeef537c23cc7ea92da7289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
