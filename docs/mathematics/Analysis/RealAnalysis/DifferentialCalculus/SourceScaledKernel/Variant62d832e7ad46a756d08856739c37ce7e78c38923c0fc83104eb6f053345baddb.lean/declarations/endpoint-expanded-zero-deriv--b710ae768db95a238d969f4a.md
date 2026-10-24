# endpoint_expanded_zero_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88b0823e-d2df-edeb-7df1-8f7f78895320",
  "kind": "theorem",
  "lexical_name": "endpoint_expanded_zero_deriv",
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
  "slug": "endpoint-expanded-zero-deriv--b710ae768db95a238d969f4a",
  "source": {
    "blob": "a3053a6ee4028934f237cb5de0bcf0839e2c16fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b710ae768db95a238d969f4af48174d1cb0b729c2695bca3a2750f78e073148b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b0823e-d2df-edeb-7df1-8f7f78895320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_expanded_zero_deriv (n : ℕ) (x : ℝ) :
    iteratedDeriv n endpointExpandedZero x =
      (128 / 315 : ℝ) * (9 : ℕ).descFactorial n * x ^ (9 - n) +
      (-256 / 315 : ℝ) * (10 : ℕ).descFactorial n * x ^ (10 - n) +
      (2432 / 3465 : ℝ) * (11 : ℕ).descFactorial n * x ^ (11 - n) +
      (-1184 / 3465 : ℝ) * (12 : ℕ).descFactorial n * x ^ (12 - n) +
      (4624 / 45045 : ℝ) * (13 : ℕ).descFactorial n * x ^ (13 - n) +
      (-16 / 819 : ℝ) * (14 : ℕ).descFactorial n * x ^ (14 - n) +
      (8 / 3465 : ℝ) * (15 : ℕ).descFactorial n * x ^ (15 - n) +
      (-1 / 6435 : ℝ) * (16 : ℕ).descFactorial n * x ^ (16 - n) +
      (1 / 218790 : ℝ) * (17 : ℕ).descFactorial n * x ^ (17 - n) := by
  unfold endpointExpandedZero
  simp (disch := fun_prop) only [iteratedDeriv_fun_add,
    iteratedDeriv_const_mul_field, iteratedDeriv_pow, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3053a6ee4028934f237cb5de0bcf0839e2c16fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
