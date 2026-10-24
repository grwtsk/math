# ideal_eq_iInf_under_map_away

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7074c615cbcdc641cff6af0b6784b73ce44c4372",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2b328fb-1891-bac3-7dc8-c1ef6692031e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2aaa819-fe49-0696-5307-f695b568d063",
  "kind": "theorem",
  "lexical_name": "ideal_eq_iInf_under_map_away",
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
  "slug": "ideal-eq-iinf-under-map-away--8d7d7052e705be0c7cf09a12",
  "source": {
    "blob": "7074c615cbcdc641cff6af0b6784b73ce44c4372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 266,
    "path": "GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7d7052e705be0c7cf09a12ecdf337da9923d4ad34db6f9e6cd43c92b94c238",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2aaa819-fe49-0696-5307-f695b568d063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_eq_iInf_under_map_away {S : Finset R} (hS : Ideal.span (α := R) S = ⊤) (I : Ideal R) :
    I = ⨅ f ∈ S, (I.map (algebraMap R (Localization.Away f))).under R := by
  apply le_antisymm
  · simp only [le_iInf₂_iff, ← Ideal.map_le_iff_le_comap, le_refl, implies_true]
  · intro x hx
    apply Submodule.mem_of_span_eq_top_of_smul_pow_mem _ _ hS
    rintro ⟨s, hs⟩
    simp only [Ideal.mem_iInf, Ideal.mem_comap] at hx
    obtain ⟨⟨y, ⟨_, n, rfl⟩⟩, e⟩ :=
      (IsLocalization.mem_map_algebraMap_iff (.powers s) _).mp (hx s hs)
    dsimp only at e
    rw [← map_mul, IsLocalization.eq_iff_exists (.powers s)] at e
    obtain ⟨⟨_, m, rfl⟩, e⟩ := e
    use m + n
    dsimp at e ⊢
    rw [pow_add, mul_assoc, ← mul_comm x, e]
    exact I.mul_mem_left _ y.2

@[deprecated (since := "2026-04-09")] alias ideal_eq_iInf_comap_map_away :=
  ideal_eq_iInf_under_map_away

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7074c615cbcdc641cff6af0b6784b73ce44c4372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
