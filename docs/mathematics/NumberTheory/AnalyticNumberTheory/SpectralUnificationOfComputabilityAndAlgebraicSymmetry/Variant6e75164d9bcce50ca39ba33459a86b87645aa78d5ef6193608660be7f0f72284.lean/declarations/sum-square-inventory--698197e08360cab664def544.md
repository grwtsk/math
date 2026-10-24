# sum_square_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4cec631-4f98-431f-6343-284362f0b809",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25d8602a-925a-59b7-e67c-95f97edd77be",
  "kind": "theorem",
  "lexical_name": "sum_square_inventory",
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
  "slug": "sum-square-inventory--698197e08360cab664def544",
  "source": {
    "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:698197e08360cab664def544ac8baeea60280632fee2a306a9f872de5f63a31f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d8602a-925a-59b7-e67c-95f97edd77be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_square_inventory (A : ℝ) (f : ℕ → ℝ) :
    (∑ n ∈ (primePowerInventory (2 * A)).filter IsSquare, f n) =
      ∑ n ∈ primePowerInventory A, f (n ^ 2) := by
  classical
  symm
  apply Finset.sum_bij (fun n _ ↦ n ^ 2)
  · intro n hn
    exact Finset.mem_filter.mpr
      ⟨(square_mem_inventory_iff A n).mpr hn, (isSquare_iff_exists_sq _).mpr ⟨n, rfl⟩⟩
  · intro a _ b _ hab
    exact Nat.pow_left_injective (by norm_num : (2 : ℕ) ≠ 0) hab
  · intro n hn
    obtain ⟨hinv, hs⟩ := Finset.mem_filter.mp hn
    obtain ⟨a, ha⟩ := hs.exists_sq n
    refine ⟨a, (square_mem_inventory_iff A a).mp ?_, ha.symm⟩
    rwa [← ha]
  · intro n _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0650d99ed8929b18de14c0caf38ed073c52b5b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
