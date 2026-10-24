# correctedNumerator_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fe70fcc-d434-5c3c-4c20-aa390ec9710e",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_hasDerivAt",
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
  "slug": "correctednumerator-hasderivat--64d36e98b7ead43d47290a37",
  "source": {
    "blob": "c42f9d49f1ba77cb9f558949ea7f9b743d15e69a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64d36e98b7ead43d47290a37edd4170cdb0199acbbc5556b7099932fbe7aec2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe70fcc-d434-5c3c-4c20-aa390ec9710e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_hasDerivAt (X : ℕ) (z : ℂ) :
    HasDerivAt (correctedNumerator X)
      ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
          (-(Real.log (n : ℝ) : ℂ)))) +
        (mobiusReciprocalSum X : ℂ) *
          (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
            (Real.log (X : ℝ) : ℂ))) z := by
  unfold correctedNumerator dirichletNumerator
  have hd := (HasDerivAt.fun_sum (u := Icc 1 X) (fun n _ =>
    (((hasDerivAt_const z (1 / 2 : ℂ)).add (hasDerivAt_id z)).neg.mul_const
      (Real.log (n : ℝ) : ℂ)).cexp.const_mul (ArithmeticFunction.moebius n : ℂ))).sub
    ((((hasDerivAt_const z (1 / 2 : ℂ)).sub (hasDerivAt_id z)).mul_const
      (Real.log (X : ℝ) : ℂ)).cexp.const_mul (mobiusReciprocalSum X : ℂ))
  convert! hd using 1
  simp [Pi.add_apply, Pi.neg_apply, Pi.sub_apply, id_eq, neg_mul, mul_neg]


/-- The logarithmic normalization separates into its endpoint and signed log moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c42f9d49f1ba77cb9f558949ea7f9b743d15e69a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
