# rank_span_le_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d99dd565271b7a7158a4cc0e3149993f3693eb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c30c4164-f386-0e08-7fcb-e9387112c234",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74a59be3-98b0-a61b-c109-73009f57291c",
  "kind": "theorem",
  "lexical_name": "rank_span_le_rank",
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
  "slug": "rank-span-le-rank--2d77f7da93099cf03c2f6974",
  "source": {
    "blob": "2d99dd565271b7a7158a4cc0e3149993f3693eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d77f7da93099cf03c2f697424ebe9fc75bfe46306e364dc8d7a103895ec8447",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74a59be3-98b0-a61b-c109-73009f57291c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_span_le_rank : Module.rank K (span K (M : Set V)) ≤ Module.rank R M := by
  obtain ⟨b, hbM, hbspan, hbli⟩ := exists_linearIndependent K (M : Set V)
  rw [← hbspan, rank_span_set hbli]
  exact LinearIndependent.cardinal_le_rank (v := Set.inclusion hbM)
    (.of_comp M.subtype (hbli.restrict_scalars' R))

/-- The `K`-rank of the `K`-span of a set `s` in `V` is at most the `R`-rank of the `R`-span
of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d99dd565271b7a7158a4cc0e3149993f3693eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
