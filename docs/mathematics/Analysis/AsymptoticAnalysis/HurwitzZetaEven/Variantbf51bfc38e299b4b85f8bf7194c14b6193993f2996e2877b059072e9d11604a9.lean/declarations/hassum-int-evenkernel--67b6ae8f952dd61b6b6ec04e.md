# hasSum_int_evenKernel₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b3d9c9b-3b28-1b40-d4a8-16f657b2352f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d2a1167-9d99-2e58-4bca-6a3abeda667c",
  "kind": "lemma",
  "lexical_name": "hasSum_int_evenKernel₀",
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
  "slug": "hassum-int-evenkernel--67b6ae8f952dd61b6b6ec04e",
  "source": {
    "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 185,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b6ae8f952dd61b6b6ec04e0c1c2267eaa5fec6b7571f21181de444c1e6bf80",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2a1167-9d99-2e58-4bca-6a3abeda667c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_int_evenKernel₀ (a : ℝ) {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℤ ↦ if n + a = 0 then 0 else rexp (-π * (n + a) ^ 2 * t))
    (evenKernel a t - if (a : UnitAddCircle) = 0 then 1 else 0) := by
  have := Classical.propDecidable -- speed up instance search for `if / then / else`
  simp_rw [AddCircle.coe_eq_zero_iff, zsmul_one]
  split_ifs with h
  · obtain ⟨k, rfl⟩ := h
    simpa [← Int.cast_add, add_eq_zero_iff_eq_neg]
      using hasSum_ite_sub_hasSum (hasSum_int_evenKernel (k : ℝ) ht) (-k)
  · suffices ∀ (n : ℤ), n + a ≠ 0 by simpa [this] using hasSum_int_evenKernel a ht
    contrapose! h
    let ⟨n, hn⟩ := h
    exact ⟨-n, by simpa [neg_eq_iff_add_eq_zero]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
