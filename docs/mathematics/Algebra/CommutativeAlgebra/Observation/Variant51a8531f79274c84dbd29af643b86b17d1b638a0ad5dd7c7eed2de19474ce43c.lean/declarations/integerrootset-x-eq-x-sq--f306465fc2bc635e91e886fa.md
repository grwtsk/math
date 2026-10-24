# integerRootSet_X_eq_X_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea2b4cda-ba1e-94bf-41da-5eb8a9f8fade",
  "kind": "theorem",
  "lexical_name": "integerRootSet_X_eq_X_sq",
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
  "slug": "integerrootset-x-eq-x-sq--f306465fc2bc635e91e886fa",
  "source": {
    "blob": "ec78f6fe0b550766be1d67d5a30c75c011e17cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f306465fc2bc635e91e886faa695375d49d840642e1ddeb92d9c18b1351131af",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2b4cda-ba1e-94bf-41da-5eb8a9f8fade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerRootSet_X_eq_X_sq :
    integerRootSet (Polynomial.X : Polynomial ℤ) =
      integerRootSet ((Polynomial.X : Polynomial ℤ) ^ 2) :=
  integerRootSet_square Polynomial.X

/-- The same integer-root class contains different ordinary polynomial degrees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec78f6fe0b550766be1d67d5a30c75c011e17cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
