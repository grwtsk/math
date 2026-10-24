# typeTwoSource_eq_spectral_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dd3a5dd-4344-cb64-2da8-7ee2158a7d97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52157728-9915-0a9a-29ae-8a589c49ab8b",
  "kind": "theorem",
  "lexical_name": "typeTwoSource_eq_spectral_product",
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
  "slug": "typetwosource-eq-spectral-product--44ace5cdd7f66f4c91378720",
  "source": {
    "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ace5cdd7f66f4c91378720fb9edcf93295241cd5e5d4c280f484223f4a2468",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52157728-9915-0a9a-29ae-8a589c49ab8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoSource_eq_spectral_product (A : ℝ) (hA : 1 ≤ A) :
    (typeTwoSource A : ℂ) = ∫ ξ, (spectralWeight A ξ : ℂ) *
      dirichletPolynomial (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
        (fun m ↦ vonMangoldt m / Real.sqrt (m : ℝ)) ξ *
      dirichletPolynomial (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
        (fun n ↦ beta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) ξ := by
  rw [← finite_spectral_factorization A hA]
  congr 1
  rw [typeTwoSource_eq_rectangle A hA]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hn).1
  dsimp [sourcePlainWeight]
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hnpos.ne', Real.sqrt_mul hmpos.le]
  ring

/-- Equality of the two original long indices, with its actual sum-log shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f9ff26cc6793015e79735324638d19ee07ccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
