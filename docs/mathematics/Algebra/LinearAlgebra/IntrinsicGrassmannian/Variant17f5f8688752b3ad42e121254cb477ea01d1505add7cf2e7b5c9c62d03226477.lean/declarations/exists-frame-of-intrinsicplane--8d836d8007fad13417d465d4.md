# exists_frame_of_intrinsicPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01532a39edd1d13714da9b96d3bac264ccf06d96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63a64969-3813-ecbc-5c54-f48345cdbf1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c60550ef-d234-8184-76bf-6c4064d7a89c",
  "kind": "theorem",
  "lexical_name": "exists_frame_of_intrinsicPlane",
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
  "slug": "exists-frame-of-intrinsicplane--8d836d8007fad13417d465d4",
  "source": {
    "blob": "01532a39edd1d13714da9b96d3bac264ccf06d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d836d8007fad13417d465d4035863f6900f05cbe71181c6e5dc123a25441883",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60550ef-d234-8184-76bf-6c4064d7a89c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_frame_of_intrinsicPlane (P : IntrinsicPlane k n) :
    ∃ A : FullRankFrame k n, frameRowSpace A.val = P.val := by
  have hspan : Submodule.span ℝ (P.val : Set (Fin n → ℝ)) = P.val := by
    apply le_antisymm
    · exact Submodule.span_le.mpr (fun _ hx => hx)
    · intro x hx
      exact Submodule.subset_span hx
  have hfamily := Submodule.exists_fun_fin_finrank_span_eq ℝ
    (P.val : Set (Fin n → ℝ))
  rw [hspan, P.property] at hfamily
  obtain ⟨v, _, hv, _⟩ := hfamily
  let A : Matrix (Fin k) (Fin n) ℝ := Matrix.of v
  have hrow : frameRowSpace A = P.val := by
    change Submodule.span ℝ (Set.range v) = P.val
    exact hv
  have hrank : A.rank = k := by
    rw [Matrix.rank_eq_finrank_span_row]
    change Module.finrank ℝ (frameRowSpace A) = k
    rw [hrow]
    exact P.property
  exact ⟨⟨A, hrank⟩, hrow⟩

/-- Every intrinsic plane has an actual full-rank frame presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01532a39edd1d13714da9b96d3bac264ccf06d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
