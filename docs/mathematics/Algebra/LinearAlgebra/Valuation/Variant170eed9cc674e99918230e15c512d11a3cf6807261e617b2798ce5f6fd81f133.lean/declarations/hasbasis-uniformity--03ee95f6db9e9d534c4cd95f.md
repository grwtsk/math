# hasBasis_uniformity

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
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d20b7b2e-96f3-46f1-539f-2d064a541c96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15e24914-e3c7-9619-b3ce-e3f1e7f7747c",
  "kind": "theorem",
  "lexical_name": "hasBasis_uniformity",
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
  "slug": "hasbasis-uniformity--03ee95f6db9e9d534c4cd95f",
  "source": {
    "blob": "ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ee95f6db9e9d534c4cd95f20efe3d55014c4dda89910ec4718ec6f4f477d9c",
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

Occurrence: `result:15e24914-e3c7-9619-b3ce-e3f1e7f7747c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_uniformity : (uniformity R).HasBasis (fun _ => True)
    fun γ : Γ₀ˣ => { p : R × R | v (p.2 - p.1) < (γ : Γ₀) } := by
  rw [uniformity_eq_comap_nhds_zero]
  exact (hasBasis_nhds_zero R Γ₀).comap _
#align valued.has_basis_uniformity Valued.hasBasis_uniformity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
