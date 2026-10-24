# alpogeFable_three_distinct_fixed_points

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
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61c2d0f0-71a6-c85a-483f-58dff6735801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44fc3791-527b-8e51-fd5d-23eae8412229",
  "kind": "theorem",
  "lexical_name": "alpogeFable_three_distinct_fixed_points",
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
  "slug": "alpogefable-three-distinct-fixed-points--d936d7c3383e8adb99d8a281",
  "source": {
    "blob": "6fdb15af2ddf526dfd08906ce408b96b4277e255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d936d7c3383e8adb99d8a2819afef2eba3a652cf62b4daa470abe6dda6d5182c",
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

Occurrence: `result:44fc3791-527b-8e51-fd5d-23eae8412229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alpogeFable_three_distinct_fixed_points :
    ∃ a b c : Fin 3 → ℚ, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      Function.IsFixedPt alpogeFableTransform a ∧
      Function.IsFixedPt alpogeFableTransform b ∧
      Function.IsFixedPt alpogeFableTransform c :=
  ⟨pZero, pPlus, pMinus, p_zero_ne_p_plus, p_zero_ne_p_minus, p_plus_ne_p_minus,
    alpogeFable_p_zero_fixed, alpogeFable_p_plus_fixed, alpogeFable_p_minus_fixed⟩

/-- The actual formal partial derivatives of the transformation polynomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fdb15af2ddf526dfd08906ce408b96b4277e255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
