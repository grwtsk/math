# source_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc1802f0-300c-00db-1d46-f921ebf23a63",
  "kind": "theorem",
  "lexical_name": "source_error_bound",
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
  "slug": "source-error-bound--3d08fc32a341278b199f0fbc",
  "source": {
    "blob": "47590da95970d55ac5e2b49a24660ff0611083ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 160,
    "path": "GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d08fc32a341278b199f0fbc5c8b61913928a3fc1b10e4ce29aad6a19eb1db2a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1802f0-300c-00db-1d46-f921ebf23a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_error_bound (s : Finset ι) (parent : Code 𝕜 X Y₁)
    (child : ι → Code 𝕜 X Y) (L : X →L[𝕜] Z)
    (aggregate : X) (source : ι → X) (parentData : Y₁) (childData : ι → Y)
    (ε : ι → ℝ) (δ : ℝ)
    (coverage : CoverageCertificate s aggregate source)
    (aggregateError :
      ‖parentData - ∑ i ∈ s, transport parent (child i) (childData i)‖ ≤ δ)
    (sourceError : ∀ i ∈ s,
      ‖childData i - (child i).encode (source i)‖ ≤ ε i) :
    ‖L (parent.decode parentData) - L aggregate‖ ≤
      ‖L.comp parent.decode‖ * δ +
        ∑ i ∈ s, ‖L.comp (child i).decode‖ * ε i := by
  have identity := reconstruction_identity s parent child L aggregate source
    parentData childData coverage
  calc
    ‖L (parent.decode parentData) - L aggregate‖ =
        ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i)) +
          ∑ i ∈ s, (L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ := by rw [identity]
    _ ≤ ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖ +
          ‖∑ i ∈ s, (L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ :=
      norm_add_le _ _
    _ ≤ ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖ +
          ∑ i ∈ s, ‖(L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ := by
      exact add_le_add (le_refl _) (norm_sum_le _ _)
    _ ≤ ‖L.comp parent.decode‖ * δ +
          ∑ i ∈ s, ‖L.comp (child i).decode‖ * ε i := by
      apply add_le_add
      · calc
          ‖(L.comp parent.decode)
              (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖
              ≤ ‖L.comp parent.decode‖ *
                  ‖parentData - ∑ i ∈ s, transport parent (child i) (childData i)‖ :=
            (L.comp parent.decode).le_opNorm _
          _ ≤ ‖L.comp parent.decode‖ * δ :=
            mul_le_mul_of_nonneg_left aggregateError (norm_nonneg _)
      · apply Finset.sum_le_sum
        intro i hi
        calc
          ‖(L.comp (child i).decode)
              (childData i - (child i).encode (source i))‖
              ≤ ‖L.comp (child i).decode‖ *
                  ‖childData i - (child i).encode (source i)‖ :=
            (L.comp (child i).decode).le_opNorm _
          _ ≤ ‖L.comp (child i).decode‖ * ε i :=
            mul_le_mul_of_nonneg_left (sourceError i hi) (norm_nonneg _)

end

end GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47590da95970d55ac5e2b49a24660ff0611083ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
