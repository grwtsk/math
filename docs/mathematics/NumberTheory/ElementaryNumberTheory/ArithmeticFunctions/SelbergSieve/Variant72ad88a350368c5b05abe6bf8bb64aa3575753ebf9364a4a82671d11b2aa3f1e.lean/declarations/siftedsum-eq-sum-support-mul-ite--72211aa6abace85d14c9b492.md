# siftedsum_eq_sum_support_mul_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48c77521-3bd4-c790-ab59-5c0f47d82d18",
  "kind": "theorem",
  "lexical_name": "siftedsum_eq_sum_support_mul_ite",
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
  "slug": "siftedsum-eq-sum-support-mul-ite--72211aa6abace85d14c9b492",
  "source": {
    "blob": "cdf08d2684dbe2489a9ec4e1962620dfd757db5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72211aa6abace85d14c9b49216f088f3df073fd3ffee8e67d03a71421a3cef12",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c77521-3bd4-c790-ab59-5c0f47d82d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem siftedsum_eq_sum_support_mul_ite :
    siftedSum = ∑ d ∈ support, a d * if Nat.gcd P d = 1 then 1 else 0 := by
  dsimp only [siftedSum]
  simp_rw [mul_ite, mul_one, mul_zero]

omit s in
/-- A sequence of coefficients $\mu^{+}$ is upper Moebius if $\mu * \zeta ≤ \mu^{+} * \zeta$. These
  coefficients then yield an upper bound on the sifted sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf08d2684dbe2489a9ec4e1962620dfd757db5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
