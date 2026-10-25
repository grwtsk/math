# sqrtEvalResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59a352a144be7896b8549603380c9934b9698f5c32f34607e1f8eb4d8af94896",
  "kind": "def",
  "lexical_name": "sqrtEvalResult",
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
  "slug": "sqrtevalresult--10c0c324d7be74de7c7e7458",
  "source": {
    "blob": "4340fbc39a1648d564a0d72a4806c8755a16fbdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10c0c324d7be74de7c7e7458505ff1c2418b6da7a6be6b3d5dc8fb07e66415ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59a352a144be7896b8549603380c9934b9698f5c32f34607e1f8eb4d8af94896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrtEvalResult := evalIntervalDyadic sqrtVarExpr testEnv

-- The result should be a valid interval (lo ≤ hi)
#guard sqrtEvalResult.lo.toRat ≤ sqrtEvalResult.hi.toRat

-- Lower bound should be 0 (conservative)
#guard sqrtEvalResult.lo.toRat = 0

-- Upper bound should be max(4, 1) = 4 (conservative)
#guard sqrtEvalResult.hi.toRat = 4

/-! ## Test 7: Composed expressions with sqrt -/

-- sqrt(x + 1) on [0, 3] should give bounds containing [1, 2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4340fbc39a1648d564a0d72a4806c8755a16fbdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
