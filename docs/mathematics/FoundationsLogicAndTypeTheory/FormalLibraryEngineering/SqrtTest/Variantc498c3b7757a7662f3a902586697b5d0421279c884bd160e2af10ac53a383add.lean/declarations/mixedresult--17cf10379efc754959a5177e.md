# mixedResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:344872b5d3ff520dfc1df0e82eb17aa51765aae14432aa7a98299715f9896f7f",
  "kind": "def",
  "lexical_name": "mixedResult",
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
  "slug": "mixedresult--17cf10379efc754959a5177e",
  "source": {
    "blob": "4340fbc39a1648d564a0d72a4806c8755a16fbdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17cf10379efc754959a5177e5ff4bc51cdd056342cf2c0f757e2d1df57da0f03",
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

Occurrence: `declaration:344872b5d3ff520dfc1df0e82eb17aa51765aae14432aa7a98299715f9896f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mixedResult := evalIntervalDyadic mixedExpr testEnv

-- Result should be valid
#guard mixedResult.lo.toRat ≤ mixedResult.hi.toRat

/-! ## Test 10: Soundness theorem availability -/

-- Verify that the soundness theorem is available (won't #guard, just type-check)
#check @IntervalDyadic.mem_sqrt

-- Verify eval_sqrt simp lemma exists
#check @Expr.eval_sqrt

-- Verify eval_abs theorem exists
#check @Expr.eval_abs

end LeanCert.Test.SqrtTest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variantc498c3b7757a7662f3a902586697b5d0421279c884bd160e2af10ac53a383add.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4340fbc39a1648d564a0d72a4806c8755a16fbdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
