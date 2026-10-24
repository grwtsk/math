# interior_euclideanQuadrant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1aff93effe517b85f442532551475fa2858f6f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a225ae1b3562355869cd70ac00695e7feb11428153b4710a18c1ee29a016f5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:841159c2-8285-d012-ac10-1ffc5dfa63d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b491e5d0-5ffc-af1c-57d0-3ed97c045127",
  "kind": "theorem",
  "lexical_name": "interior_euclideanQuadrant",
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
  "slug": "interior-euclideanquadrant--d9e20f2a88a67e67cc0ddcab",
  "source": {
    "blob": "b1aff93effe517b85f442532551475fa2858f6f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 158,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant2a225ae1b3562355869cd70ac00695e7feb11428153b4710a18c1ee29a016f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9e20f2a88a67e67cc0ddcab89c567d531a2775f94115a426701eea4d4bef2e4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variant2a225ae1b3562355869cd70ac00695e7feb11428153b4710a18c1ee29a016f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b491e5d0-5ffc-af1c-57d0-3ed97c045127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_euclideanQuadrant (n : ℕ) (p : ℝ≥0∞) (a : ℝ) :
    interior { y : PiLp p (fun _ : Fin n ↦ ℝ) | ∀ i : Fin n, a ≤ y i } =
      { y | ∀ i : Fin n, a < y i } := by
  let f i : PiLp p (fun _ : Fin n ↦ ℝ) → ℝ := fun x ↦ x i
  have h : { y : PiLp p (fun _ : Fin n ↦ ℝ) | ∀ i : Fin n, a ≤ y i } = ⋂ i, (f i) ⁻¹' Ici a := by
    ext; simp; rfl
  have h' : { y : PiLp p (fun _ : Fin n ↦ ℝ) | ∀ i : Fin n, a < y i } = ⋂ i, (f i) ⁻¹' Ioi a := by
    ext; simp; rfl
  rw [h, h', interior_iInter_of_finite]
  apply iInter_congr fun i ↦ ?_
  rw [← (PiLp.isOpenMap_apply p _ i).preimage_interior_eq_interior_preimage, interior_Ici]
  fun_prop

end

/--
Definition of the model with corners `(EuclideanSpace ℝ (Fin n), EuclideanHalfSpace n)`, used as
a model for manifolds with boundary. In the scope `Manifold`, use the shortcut `𝓡∂ n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variant2a225ae1b3562355869cd70ac00695e7feb11428153b4710a18c1ee29a016f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variant2a225ae1b3562355869cd70ac00695e7feb11428153b4710a18c1ee29a016f5d.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1aff93effe517b85f442532551475fa2858f6f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
