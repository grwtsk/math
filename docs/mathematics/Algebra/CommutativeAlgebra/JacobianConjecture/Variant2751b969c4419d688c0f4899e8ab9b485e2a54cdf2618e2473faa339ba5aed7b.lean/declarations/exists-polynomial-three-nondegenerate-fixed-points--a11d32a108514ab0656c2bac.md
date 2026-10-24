# exists_polynomial_three_nondegenerate_fixed_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fdb15af2ddf526dfd08906ce408b96b4277e255",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41fdcc5e-6ea5-a068-a247-6d408cd21508",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a380b741-3299-c4c0-4e73-79c33900f1a6",
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
  "slug": "exists-polynomial-three-nondegenerate-fixed-points--a11d32a108514ab0656c2bac",
  "source": {
    "blob": "6fdb15af2ddf526dfd08906ce408b96b4277e255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a11d32a108514ab0656c2bacf83f250b2b8f6e688884f458dfef3c7123015549",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a380b741-3299-c4c0-4e73-79c33900f1a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fdb15af2ddf526dfd08906ce408b96b4277e255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
