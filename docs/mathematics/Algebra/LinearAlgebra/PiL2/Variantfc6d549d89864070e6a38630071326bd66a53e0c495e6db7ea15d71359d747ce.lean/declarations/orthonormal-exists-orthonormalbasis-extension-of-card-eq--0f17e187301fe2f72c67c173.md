# Orthonormal.exists_orthonormalBasis_extension_of_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 779,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ab8d918-f8c1-44e0-e3fd-46348ac636f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4144f449-7bf4-9324-eec5-6e621f0bdc3b",
  "kind": "theorem",
  "lexical_name": "Orthonormal.exists_orthonormalBasis_extension_of_card_eq",
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
  "slug": "orthonormal-exists-orthonormalbasis-extension-of-card-eq--0f17e187301fe2f72c67c173",
  "source": {
    "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 779,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f17e187301fe2f72c67c173fa318e70bfc42f4e0252f3372ccf05962e7d069b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4144f449-7bf4-9324-eec5-6e621f0bdc3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orthonormal.exists_orthonormalBasis_extension_of_card_eq {ι : Type*} [Fintype ι]
    (card_ι : finrank 𝕜 E = Fintype.card ι) {v : ι → E} {s : Set ι}
    (hv : Orthonormal 𝕜 (s.restrict v)) : ∃ b : OrthonormalBasis ι 𝕜 E, ∀ i ∈ s, b i = v i := by
  have hsv : Injective (s.restrict v) := hv.linearIndependent.injective
  have hX : Orthonormal 𝕜 ((↑) : Set.range (s.restrict v) → E) := by
    rwa [orthonormal_subtype_range hsv]
  obtain ⟨Y, b₀, hX, hb₀⟩ := hX.exists_orthonormalBasis_extension
  have hιY : Fintype.card ι = Y.card := by
    refine' card_ι.symm.trans _
    exact FiniteDimensional.finrank_eq_card_finset_basis b₀.toBasis
  have hvsY : s.MapsTo v Y := (s.mapsTo_image v).mono_right (by rwa [← range_restrict])
  have hsv' : Set.InjOn v s := by
    rw [Set.injOn_iff_injective]
    exact hsv
  obtain ⟨g, hg⟩ := hvsY.exists_equiv_extend_of_card_eq hιY hsv'
  use b₀.reindex g.symm
  intro i hi
  · simp [hb₀, hg i hi]
#align orthonormal.exists_orthonormal_basis_extension_of_card_eq Orthonormal.exists_orthonormalBasis_extension_of_card_eq

variable (𝕜 E)

/-- A finite-dimensional inner product space admits an orthonormal basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e30bb74bd904ca644d790d4a578a68b89065c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
