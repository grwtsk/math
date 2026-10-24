# actual_moebius_quotient_sum_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c92c5eb9-12cf-7c96-8e80-834c80a95081",
  "kind": "theorem",
  "lexical_name": "actual_moebius_quotient_sum_eq_one",
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
  "slug": "actual-moebius-quotient-sum-eq-one--21fd6c06ae3ec0dba4f6ffcf",
  "source": {
    "blob": "77e8a2f20942328bf3e897fc329fe58e695eed28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 29,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21fd6c06ae3ec0dba4f6ffcfca4f0ea71434ea471b09d3e04c8505053cffdf84",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92c5eb9-12cf-7c96-8e80-834c80a95081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moebius_quotient_sum_eq_one (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * (U / d : ℕ)) = 1 := by
  have he := ArithmeticFunction.sum_Ioc_mul_zeta_eq_sum (moebius : ArithmeticFunction ℝ) U
  rw [coe_moebius_mul_coe_zeta] at he
  have hu : (∑ n ∈ Finset.Ioc 0 U, (1 : ArithmeticFunction ℝ) n) = 1 := by
    simp [ArithmeticFunction.one_apply, hU]
  rw [hu, ← Finset.Icc_add_one_left_eq_Ioc] at he
  simpa only [zero_add, intCoe_apply] using he.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e8a2f20942328bf3e897fc329fe58e695eed28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
