# IsFredholm.of_isInvertible_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7897b035-cbb1-30d6-911e-e44e61b18bb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:970d9c3a-949f-d1c9-9976-e7477f1a60fa",
  "kind": "theorem",
  "lexical_name": "IsFredholm.of_isInvertible_restrict",
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
  "slug": "isfredholm-of-isinvertible-restrict--8624981dec4bee6a6d6ba4d8",
  "source": {
    "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8624981dec4bee6a6d6ba4d84767eb89ef8c85ba8ab7fc9724019bd4c478021a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:970d9c3a-949f-d1c9-9976-e7477f1a60fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFredholm.of_isInvertible_restrict {u : E →L[𝕜] F}
    {E₁ : Submodule 𝕜 E} (E₁_closed : IsClosed (E₁ : Set E)) [E₁_coFG : E₁.CoFG]
    {F₁ : Submodule 𝕜 F} (F₁_closed : IsClosed (F₁ : Set F)) [F₁_coFG : F₁.CoFG]
    (h_mapsto : MapsTo u E₁ F₁) (h_inv : (u.restrict h_mapsto).IsInvertible) :
    IsFredholm u := by
  obtain ⟨e, he⟩ := h_inv
  have eqL : u.domRestrict E₁ = F₁.subtypeL ∘L e := congr(F₁.subtypeL ∘L $he).symm
  have eqₗ : u.toLinearMap.domRestrict E₁ = F₁.subtype ∘ₗ e := congr(($eqL).toLinearMap)
  have h : Topology.IsStrictMap u ∧ IsClosed (u.range : Set F) := by
    rw [u.isStrictMap_isClosed_range_iff_restrict E₁ E₁_closed, eqL]
    exact ⟨F₁.isEmbedding_subtype.comp e.isHomeomorph.isEmbedding |>.isStrictMap, by simpa⟩
  have disj : Disjoint E₁ u.ker := by
    rw [disjoint_iff_comap_eq_bot, ← LinearMap.ker_domRestrict, eqₗ,
      LinearMap.ker_comp, ker_subtype, comap_bot, LinearEquiv.ker]
  refine ⟨h.1, h.2, ?_, ?_, ?_⟩
  · rw [← Submodule.fg_iff_finiteDimensional]
    exact E₁_coFG.fg_of_disjoint disj.symm
  · refine F₁_coFG.of_le (le_trans ?_ (u.range_domRestrict_le_range E₁))
    rw [eqₗ, LinearMap.range_comp, LinearEquiv.range, Submodule.map_top, range_subtype]
  · exact .of_disjoint_of_finiteDimensional_quotient E₁_closed disj.symm

omit [ContinuousSMul 𝕜 E] in
/-- Let `u : E →L[𝕜] F` be a Fredholm operator. Given `dom₁` (resp. `codom₀`) an arbitrary
topological complement of `u.ker` (resp. `u.range`), we get a `FredholmPackage` for `u`
by considering the decompositions `E = dom₁ ⊕ u.ker`, `F = u.range ⊕ codom₀`, and the isomorphism
`dom₁ ≃L[𝕜] u.range` induced by `u`.

If you need control over the decompositions, this is the primary way to get a `FredholmPackage`.
Otherwise, see `IsFredholm.nonempty_fredholmPackage`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
