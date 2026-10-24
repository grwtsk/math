# zeroSumSubspace_map_permutationRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97a19d51-9714-7050-aece-e901e4b27358",
  "kind": "theorem",
  "lexical_name": "zeroSumSubspace_map_permutationRepresentation",
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
  "slug": "zerosumsubspace-map-permutationrepresentation--7b0938ecc81f5582af13e68f",
  "source": {
    "blob": "1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b0938ecc81f5582af13e68f796691ecebc3bf59133638e0ef3dda8afe61b14c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97a19d51-9714-7050-aece-e901e4b27358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroSumSubspace_map_permutationRepresentation
    (σ : Equiv.Perm (Fin 3)) :
    zeroSumSubspace.map (permutationRepresentation σ : Fiber3 →ₗ[ℝ] Fiber3) =
      zeroSumSubspace := by
  apply le_antisymm
  · rintro y ⟨x, hx, rfl⟩
    exact permutationRepresentation_preserves_zeroSum σ x hx
  · intro x hx
    refine ⟨(permutationRepresentation σ).symm x, ?_, ?_⟩
    · rw [permutationRepresentation_symm]
      exact permutationRepresentation_preserves_zeroSum σ.symm x hx
    · exact (permutationRepresentation σ).apply_symm_apply x

/-- Restriction of a coordinate permutation to the standard two-dimensional
summand.  The construction uses `submoduleMap` through
`LinearEquiv.ofSubmodules`; no coordinates are chosen here. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
