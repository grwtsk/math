# selberg_coefficient_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dff4377-4484-a98c-8987-cff1db7677dd",
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
  "slug": "selberg-coefficient-identity--077ffe1e024bae642a499aba",
  "source": {
    "blob": "b22a2d6c040356dbaed7c68e8e5d30b1c59e645f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077ffe1e024bae642a499aba46050a7de322b98ad06d4ee107cc73b19952d3e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dff4377-4484-a98c-8987-cff1db7677dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22a2d6c040356dbaed7c68e8e5d30b1c59e645f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
