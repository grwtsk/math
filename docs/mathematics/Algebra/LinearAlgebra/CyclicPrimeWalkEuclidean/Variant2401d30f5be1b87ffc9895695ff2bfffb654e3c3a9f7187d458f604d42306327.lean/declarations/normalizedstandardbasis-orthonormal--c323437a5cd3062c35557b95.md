# normalizedStandardBasis_orthonormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c81aa5e8b2ac88c7a453c42ce91aa8eb4f0fe421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2401d30f5be1b87ffc9895695ff2bfffb654e3c3a9f7187d458f604d42306327.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71fb759c-8e93-95a0-3b45-1098ecb423ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8df20a8-64af-50de-4bfa-fe6c6b6d185a",
  "kind": "theorem",
  "lexical_name": "normalizedStandardBasis_orthonormal",
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
  "slug": "normalizedstandardbasis-orthonormal--c323437a5cd3062c35557b95",
  "source": {
    "blob": "c81aa5e8b2ac88c7a453c42ce91aa8eb4f0fe421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant2401d30f5be1b87ffc9895695ff2bfffb654e3c3a9f7187d458f604d42306327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c323437a5cd3062c35557b95b7479e08f304c50e938b8545c892b5c3fe309cc2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant2401d30f5be1b87ffc9895695ff2bfffb654e3c3a9f7187d458f604d42306327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8df20a8-64af-50de-4bfa-fe6c6b6d185a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedStandardBasis_orthonormal :
    Orthonormal ℝ normalizedStandardBasis := by
  rw [orthonormal_iff_ite]
  intro i j
  fin_cases i <;> fin_cases j
  · simp only [normalizedStandardBasis, if_pos,
      real_inner_self_eq_norm_sq]
    change ‖normalizedBasisZeroVector‖ ^ 2 = 1
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [normalizedBasisZeroVector, Fin.sum_univ_three]
    field_simp [sqrtSix_ne_zero]
    nlinarith [sqrtSix_sq]
  · simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector, PiLp.inner_apply, Fin.sum_univ_three,
      RCLike.inner_apply]
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero]
    ring
  · simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector, PiLp.inner_apply, Fin.sum_univ_three,
      RCLike.inner_apply]
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero]
    ring
  · simp only [normalizedStandardBasis, if_pos,
      real_inner_self_eq_norm_sq]
    change ‖normalizedBasisOneVector‖ ^ 2 = 1
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [normalizedBasisOneVector, Fin.sum_univ_three]
    field_simp [sqrtTwo_ne_zero]
    nlinarith [sqrtTwo_sq]

/-- Every Euclidean zero-sum vector has exact coordinates in the normalized
ordered pair.  This is also the spanning certificate used below. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant2401d30f5be1b87ffc9895695ff2bfffb654e3c3a9f7187d458f604d42306327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant2401d30f5be1b87ffc9895695ff2bfffb654e3c3a9f7187d458f604d42306327.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81aa5e8b2ac88c7a453c42ce91aa8eb4f0fe421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
