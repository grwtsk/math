# pow_zero_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96ae516d-c8c2-11be-5df1-ac6a5a167f90",
  "kind": "theorem",
  "lexical_name": "pow_zero_pos",
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
  "slug": "pow-zero-pos--8d412c7f387c35aa39fcd6e3",
  "source": {
    "blob": "1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 267,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d412c7f387c35aa39fcd6e3b16a6f27be13d9a1991d3be742d777f58c9c83be",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ae516d-c8c2-11be-5df1-ac6a5a167f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pow_zero_pos [Semiring α] [PartialOrder α] [IsOrderedRing α] [Nontrivial α]
    (a : α) : 0 < a ^ 0 :=
  zero_lt_one.trans_le (pow_zero a).ge

/-- The `positivity` extension which identifies expressions of the form `a ^ (0 : ℕ)`.
This extension is run in addition to the general `a ^ b` extension (they are overlapping). -/
@[positivity _ ^ (0 : ℕ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
