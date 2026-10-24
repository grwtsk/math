# selberg_coefficient_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "301135869107a1d163ab2392974cf0f49ae4ef3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87ce8f23-5562-fa6a-0695-2efdce70e4a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ad3299d-bf41-d844-7f88-67a3a01b0061",
  "kind": "theorem",
  "lexical_name": "selberg_coefficient_identity",
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
  "slug": "selberg-coefficient-identity--288ce41d71c9c2b6bbd2d686",
  "source": {
    "blob": "301135869107a1d163ab2392974cf0f49ae4ef3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288ce41d71c9c2b6bbd2d68692f7fed0b219355e449bee5944a3a32881904a91",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad3299d-bf41-d844-7f88-67a3a01b0061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_coefficient_identity (n : ℕ) :
    (∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.log (n / d : ℕ) ^ 2) =
      selbergCoefficient n := by
  have h := congrArg (fun f : ArithmeticFunction ℝ ↦ f n) selberg_dirichlet_identity
  simp only [mul_apply, pmul_apply, ArithmeticFunction.add_apply, log_apply, intCoe_apply] at h
  rw [Nat.sum_divisorsAntidiagonal (fun d m ↦
    (ArithmeticFunction.moebius d : ℝ) * (Real.log (m : ℝ) * Real.log (m : ℝ))),
    Nat.sum_divisorsAntidiagonal (fun d m ↦
      ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt m)] at h
  simpa only [pow_two, selbergCoefficient, mul_comm] using h

/-- Every right-hand coefficient is nonnegative, without a source-kernel positivity premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301135869107a1d163ab2392974cf0f49ae4ef3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
