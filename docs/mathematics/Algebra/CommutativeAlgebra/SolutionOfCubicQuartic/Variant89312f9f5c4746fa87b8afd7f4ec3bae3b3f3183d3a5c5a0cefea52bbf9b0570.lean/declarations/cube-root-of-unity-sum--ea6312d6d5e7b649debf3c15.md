# cube_root_of_unity_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbd3dc76-6bed-2d0b-e10c-f07781c784c1",
  "kind": "theorem",
  "lexical_name": "cube_root_of_unity_sum",
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
  "slug": "cube-root-of-unity-sum--ea6312d6d5e7b649debf3c15",
  "source": {
    "blob": "985f4bb0ecd82de13fed676e35e2dea9a0547ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 93,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6312d6d5e7b649debf3c154d37f335518748d5592b63a5f78c024f42d68705",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbd3dc76-6bed-2d0b-e10c-f07781c784c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cube_root_of_unity_sum (hω : IsPrimitiveRoot ω 3) : 1 + ω + ω ^ 2 = 0 := by
  simpa [cyclotomic_prime, Finset.sum_range_succ] using hω.isRoot_cyclotomic (by decide)

/-- The roots of a monic cubic whose quadratic term is zero and whose linear term is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985f4bb0ecd82de13fed676e35e2dea9a0547ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
