# intermediate_product_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "deb51776fafd3f5f4f9044be909e298cdfd025a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57186f89-9973-d904-6778-f6c08b245b0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab672338-df5b-c53a-3684-d4b39aedea09",
  "kind": "theorem",
  "lexical_name": "intermediate_product_nonnegative",
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
  "slug": "intermediate-product-nonnegative--86ba9f218db799b69b3508e1",
  "source": {
    "blob": "deb51776fafd3f5f4f9044be909e298cdfd025a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86ba9f218db799b69b3508e150b992dda532edc2c3be48f866680edf152518ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab672338-df5b-c53a-3684-d4b39aedea09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intermediate_product_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (A.submatrix id I))
    (hB : ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (B.submatrix I id))
    (f : Fin k → Fin N) :
    0 ≤ Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id) := by
  by_cases hf : Function.Injective f
  · obtain ⟨I, e, he⟩ := exists_ordered_selection f hf
    have hfe : f = fun j => I (e j) := funext he
    rw [hfe]
    have hleft : Matrix.det (A.submatrix id (fun j => I (e j))) =
        ((Equiv.Perm.sign e : ℤ) : ℝ) * Matrix.det (A.submatrix id I) :=
      Matrix.det_permute' e (A.submatrix id I)
    have hright : Matrix.det (B.submatrix (fun j => I (e j)) id) =
        ((Equiv.Perm.sign e : ℤ) : ℝ) * Matrix.det (B.submatrix I id) :=
      Matrix.det_permute e (B.submatrix I id)
    rw [hleft, hright]
    have h := mul_nonneg (sq_nonneg (((Equiv.Perm.sign e : ℤ) : ℝ)))
      (mul_nonneg (hA I) (hB I))
    nlinarith only [h]
  · have hz : Matrix.det (A.submatrix id f) = 0 :=
      columnMinor_eq_zero_of_not_injective A f hf
    rw [hz, zero_mul]

/-- Ordered-minor nonnegativity through R is closed under actual matrix products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb51776fafd3f5f4f9044be909e298cdfd025a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
