# exists_polynomial_three_nondegenerate_fixed_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9b0068f-935e-8d5c-9139-b1710c0c6cae",
  "kind": "theorem",
  "lexical_name": "exists_polynomial_three_nondegenerate_fixed_points",
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
  "slug": "exists-polynomial-three-nondegenerate-fixed-points--8c8533f1ea98fb94ad5a561a",
  "source": {
    "blob": "ea5e7876292a5634b9075e577c865b9e24fcbbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c8533f1ea98fb94ad5a561aaa341671358dea11a93c5ebc51fc86035451c42b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9b0068f-935e-8d5c-9139-b1710c0c6cae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_polynomial_three_nondegenerate_fixed_points :
    ∃ (T : (Fin 3 → ℚ) → (Fin 3 → ℚ)) (P : Fin 3 → MvPolynomial (Fin 3) ℚ),
      T = polynomialMap P ∧
      (∀ x, Matrix.det (1 - polynomialJacobian P x) ≠ 0) ∧
      ∃ a b c : Fin 3 → ℚ, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
        Function.IsFixedPt T a ∧ Function.IsFixedPt T b ∧ Function.IsFixedPt T c :=
  ⟨alpogeFableTransform, alpogeFableTransformPoly, alpogeFable_transform_eq_polynomialMap,
    alpogeFable_fixed_points_nondegenerate, alpogeFable_three_distinct_fixed_points⟩

/-- Global uniqueness fails even though every fixed point is nondegenerate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5e7876292a5634b9075e577c865b9e24fcbbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
