# alpogeFablePoly_jacobian_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e80720ddd1498564d87349716ada33f3c161ae56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea446cf-6a68-fbc0-f949-0adcaaedc10b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63ef8276-bea5-d4e7-3c32-d8a968721514",
  "kind": "theorem",
  "lexical_name": "alpogeFablePoly_jacobian_eq",
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
  "slug": "alpogefablepoly-jacobian-eq--cbf8449448cd6d405a83d10a",
  "source": {
    "blob": "e80720ddd1498564d87349716ada33f3c161ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf8449448cd6d405a83d10a885b3eb68c94127e19daa066a550a50fc4fe3ee2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ef8276-bea5-d4e7-3c32-d8a968721514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alpogeFablePoly_jacobian_eq (x : Fin 3 → R) :
    polynomialJacobian alpogeFablePoly x =
      !![3 * x 1 * (1 + x 0 * x 1) ^ 2 * x 2 + (x 1) ^ 3 * (7 + 6 * x 0 * x 1),
         3 * x 0 * (1 + x 0 * x 1) ^ 2 * x 2 +
           x 1 * (8 + 21 * x 0 * x 1 + 12 * (x 0 * x 1) ^ 2),
         (1 + x 0 * x 1) ^ 3;
         3 * (1 + x 0 * x 1) * (1 + 3 * x 0 * x 1) * x 2 +
           12 * (x 1) ^ 2 + 18 * x 0 * (x 1) ^ 3,
         1 + 6 * (x 0) ^ 2 * (1 + x 0 * x 1) * x 2 +
           24 * x 0 * x 1 + 27 * (x 0 * x 1) ^ 2,
         3 * x 0 * (1 + x 0 * x 1) ^ 2;
         2 - 6 * x 0 * x 1 - 3 * (x 0) ^ 2 * x 2,
         -3 * (x 0) ^ 2,
         -(x 0) ^ 3] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [polynomialJacobian, alpogeFablePoly, alpogeFable₁, alpogeFable₂,
      alpogeFable₃, pderiv_ofNat] <;> ring

/-- Exact determinant identity over any commutative ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80720ddd1498564d87349716ada33f3c161ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
