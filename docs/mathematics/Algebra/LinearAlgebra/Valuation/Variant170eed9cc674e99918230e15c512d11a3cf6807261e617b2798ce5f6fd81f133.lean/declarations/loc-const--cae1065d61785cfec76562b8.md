# loc_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e639d89d-2de1-e7b3-f12e-cf31b0b27684",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bcdc872-7ad4-51e0-bd6a-e1de9ee295c4",
  "kind": "theorem",
  "lexical_name": "loc_const",
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
  "slug": "loc-const--cae1065d61785cfec76562b8",
  "source": {
    "blob": "ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae1065d61785cfec76562b8957db8c048ba49e505361edf24cfcd3ca6bf2eb5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bcdc872-7ad4-51e0-bd6a-e1de9ee295c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loc_const {x : R} (h : (v x : Γ₀) ≠ 0) : { y : R | v y = v x } ∈ 𝓝 x := by
  rw [mem_nhds]
  rcases Units.exists_iff_ne_zero.mpr h with ⟨γ, hx⟩
  use γ
  rw [hx]
  intro y y_in
  exact Valuation.map_eq_of_sub_lt _ y_in
#align valued.loc_const Valued.loc_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
