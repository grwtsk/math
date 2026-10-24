# exists_primitive_element_lt_of_isReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40cba1711a546ee181af75306b50c3f2d773ceda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5fffd2b-9e25-564f-199b-ae924d536f23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa42ff62-071e-dcf6-f6e9-f1ed094b69bf",
  "kind": "theorem",
  "lexical_name": "exists_primitive_element_lt_of_isReal",
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
  "slug": "exists-primitive-element-lt-of-isreal--120f5b78e2b3ceacef5cffc6",
  "source": {
    "blob": "40cba1711a546ee181af75306b50c3f2d773ceda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 529,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:120f5b78e2b3ceacef5cffc66214496d6b35eb55f421af7d695d78a5a48311be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa42ff62-071e-dcf6-f6e9-f1ed094b69bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_primitive_element_lt_of_isReal {w₀ : InfinitePlace K} (hw₀ : IsReal w₀) {B : ℝ≥0}
    (hB : minkowskiBound K ↑1 < convexBodyLTFactor K * B) :
    ∃ a : 𝓞 K, ℚ⟮(a : K)⟯ = ⊤ ∧
      ∀ w : InfinitePlace K, w a < max B 1 := by
  classical
  have : minkowskiBound K ↑1 < volume (convexBodyLT K (fun w ↦ if w = w₀ then B else 1)) := by
    rw [convexBodyLT_volume, ← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀)]
    simp_rw [ite_pow, one_pow]
    rw [Finset.prod_ite_eq']
    simp_rw [Finset.notMem_erase, ite_false, mult, hw₀, ite_true, one_mul, pow_one]
    exact hB
  obtain ⟨a, h_nz, h_le⟩ := exists_ne_zero_mem_ringOfIntegers_lt K this
  refine ⟨a, ?_, fun w ↦ lt_of_lt_of_le (h_le w) ?_⟩
  · exact is_primitive_element_of_infinitePlace_lt h_nz
      (fun w h_ne ↦ by convert! (ite_eq_right h_ne) ▸ h_le w) (Or.inl hw₀)
  · split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40cba1711a546ee181af75306b50c3f2d773ceda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
