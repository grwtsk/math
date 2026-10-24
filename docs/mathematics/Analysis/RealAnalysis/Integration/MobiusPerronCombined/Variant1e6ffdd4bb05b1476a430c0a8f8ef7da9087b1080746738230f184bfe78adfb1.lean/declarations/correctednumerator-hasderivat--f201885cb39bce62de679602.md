# correctedNumerator_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b4075fbfaa968641a726275a4ca4d9d3ff65d74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:308c642c-652d-5f4c-ffb8-8fc90f59ceb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a46fc697-1bb8-5427-8a10-9389e2bc4269",
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
  "slug": "correctednumerator-hasderivat--f201885cb39bce62de679602",
  "source": {
    "blob": "1b4075fbfaa968641a726275a4ca4d9d3ff65d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f201885cb39bce62de67960201548f54e19e08ea6a8b467c129b63521893908e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46fc697-1bb8-5427-8a10-9389e2bc4269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–288.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4075fbfaa968641a726275a4ca4d9d3ff65d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
