# finrank_orthogonal_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a1efbff807f6e93f419b4b900e23bd34d230402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cefec4e-62be-565b-246f-047ab2942d4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e5e30c9-5597-f1ae-3507-834db66a50e4",
  "kind": "theorem",
  "lexical_name": "finrank_orthogonal_span_singleton",
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
  "slug": "finrank-orthogonal-span-singleton--c4f0e2f3cc73a68dfc09693e",
  "source": {
    "blob": "7a1efbff807f6e93f419b4b900e23bd34d230402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4f0e2f3cc73a68dfc09693e91591fbd8866616cf7deeacc437f7ad2bae17082",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e5e30c9-5597-f1ae-3507-834db66a50e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1106–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_orthogonal_span_singleton {n : ℕ} [_i : Fact (finrank 𝕜 E = n + 1)] {v : E}
    (hv : v ≠ 0) : finrank 𝕜 (𝕜 ∙ v)ᗮ = n := by
  haveI : FiniteDimensional 𝕜 E := .of_fact_finrank_eq_succ n
  exact finrank_add_finrank_orthogonal' <| by
    simp [finrank_span_singleton hv, _i.elim, add_comm]

end Submodule

open Module Submodule

/-- An element `φ` of the orthogonal group of `F` can be factored as a product of reflections, and
specifically at most as many reflections as the dimension of the complement of the fixed subspace
of `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean#L1106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1efbff807f6e93f419b4b900e23bd34d230402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
