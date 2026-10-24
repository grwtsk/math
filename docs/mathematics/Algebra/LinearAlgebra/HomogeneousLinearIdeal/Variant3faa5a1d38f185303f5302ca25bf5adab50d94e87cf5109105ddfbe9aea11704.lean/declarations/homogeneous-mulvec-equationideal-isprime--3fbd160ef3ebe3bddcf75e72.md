# homogeneous_mulVec_equationIdeal_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "869cc5e0f3009dbb4de80cedfc86065735b0901f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a40d8056-79c4-a011-bf90-e417b6b39505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:095625d1-d846-7cbb-553f-213a3d34e700",
  "kind": "theorem",
  "lexical_name": "homogeneous_mulVec_equationIdeal_isPrime",
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
  "slug": "homogeneous-mulvec-equationideal-isprime--3fbd160ef3ebe3bddcf75e72",
  "source": {
    "blob": "869cc5e0f3009dbb4de80cedfc86065735b0901f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbd160ef3ebe3bddcf75e725f85167fa41b5ff514ed377395bb3b84f561d4d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095625d1-d846-7cbb-553f-213a3d34e700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_mulVec_equationIdeal_isPrime {α σ : Type*} [Fintype σ]
    (L : Matrix α σ K) :
    (Ideal.span (Set.range ((L.map (MvPolynomial.C : K →+* MvPolynomial σ K)).mulVec
      MvPolynomial.X))).IsPrime := by
  change (Ideal.span (Set.range fun i ↦
    ∑ j, MvPolynomial.C (L i j) * (MvPolynomial.X j : MvPolynomial σ K))).IsPrime
  exact homogeneous_linear_equationIdeal_isPrime L

/-- Matrix-coordinate form of the radical ideal theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `869cc5e0f3009dbb4de80cedfc86065735b0901f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
