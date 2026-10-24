# jacobiOperator_isSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e1a4869-4266-e4e2-b12a-d0f0165e1e4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5b18ab7-5301-fa5f-92a5-1d6be6389fe5",
  "kind": "theorem",
  "lexical_name": "jacobiOperator_isSelfAdjoint",
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
  "slug": "jacobioperator-isselfadjoint--2bc5ddeee8dcd36fde56cb58",
  "source": {
    "blob": "8d94945c95a1b5961b1032f6beef3839008a1b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 204,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc5ddeee8dcd36fde56cb58a761a2c08ad2de5e883ca1bc1a80276f82b5de04",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5b18ab7-5301-fa5f-92a5-1d6be6389fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiOperator_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint (jacobiOperator t ht) := by
  let U := pointedUnitary t ht
  let M := coordinateMultiplication (momentMeasure t)
  let J := jacobiOperator t ht
  have hd : Dense (J.domain : Set (lp (fun _ : ℕ => ℂ) 2)) := jacobiDomain_dense ht
  have hsym := jacobiOperator_symmetric ht
  have hle : J ≤ J† := hsym.le_adjoint hd
  have hM : M† = M := LinearPMap.isSelfAdjoint_def.mp
    (theta_coordinateMultiplication_isSelfAdjoint ht)
  have hdom : J†.domain ≤ J.domain := by
    intro y hy
    have hyM : U y ∈ M†.domain := by
      apply LinearPMap.mem_adjoint_domain_of_exists
      refine ⟨U (J† ⟨y, hy⟩), ?_⟩
      intro z
      let x : J.domain := ⟨U.symm z, by
        change U (U.symm z) ∈ M.domain
        simpa only [LinearIsometryEquiv.apply_symm_apply] using z.property⟩
      have h := J.adjoint_isFormalAdjoint hd ⟨y, hy⟩ x
      have hz : domainUnitary t ht x = z := by
        apply Subtype.ext
        exact U.apply_symm_apply z
      rw [← U.inner_map_map, ← U.inner_map_map] at h
      change ⟪U (J† ⟨y, hy⟩), U x⟫_ℂ = ⟪U y, U (J x)⟫_ℂ at h
      have hU : U (J x) = M (domainUnitary t ht x) := pointedUnitary_jacobiOperator ht x
      rw [hU, hz] at h
      simpa only [x, LinearIsometryEquiv.apply_symm_apply] using h
    rw [hM] at hyM
    exact hyM
  apply LinearPMap.isSelfAdjoint_def.mpr
  exact (LinearPMap.eq_of_le_of_domain_eq hle (le_antisymm hle.1 hdom)).symm

/-- The domain-transported Jacobi operator has a closed graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d94945c95a1b5961b1032f6beef3839008a1b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
