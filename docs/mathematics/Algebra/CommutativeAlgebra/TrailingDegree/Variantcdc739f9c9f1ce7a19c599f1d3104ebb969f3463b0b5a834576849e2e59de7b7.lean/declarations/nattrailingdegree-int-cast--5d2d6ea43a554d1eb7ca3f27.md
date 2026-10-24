# natTrailingDegree_int_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cba64e4a-95d7-0772-8593-901d63e1c239",
  "kind": "theorem",
  "lexical_name": "natTrailingDegree_int_cast",
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
  "slug": "nattrailingdegree-int-cast--5d2d6ea43a554d1eb7ca3f27",
  "source": {
    "blob": "e600e6cda06f4b0c435631febcc359d4844c2273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 477,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantcdc739f9c9f1ce7a19c599f1d3104ebb969f3463b0b5a834576849e2e59de7b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d2d6ea43a554d1eb7ca3f2714a52e63e9182dd95fd6ca2cdc47a73194a0404a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantcdc739f9c9f1ce7a19c599f1d3104ebb969f3463b0b5a834576849e2e59de7b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba64e4a-95d7-0772-8593-901d63e1c239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrailingDegree_int_cast (n : ℤ) : natTrailingDegree (n : R[X]) = 0 := by
  simp only [← C_eq_int_cast, natTrailingDegree_C]
#align polynomial.nat_trailing_degree_int_cast Polynomial.natTrailingDegree_int_cast

end Ring

section Semiring

variable [Semiring R]

/-- The second-lowest coefficient, or 0 for constants -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantcdc739f9c9f1ce7a19c599f1d3104ebb969f3463b0b5a834576849e2e59de7b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantcdc739f9c9f1ce7a19c599f1d3104ebb969f3463b0b5a834576849e2e59de7b7.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e600e6cda06f4b0c435631febcc359d4844c2273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
