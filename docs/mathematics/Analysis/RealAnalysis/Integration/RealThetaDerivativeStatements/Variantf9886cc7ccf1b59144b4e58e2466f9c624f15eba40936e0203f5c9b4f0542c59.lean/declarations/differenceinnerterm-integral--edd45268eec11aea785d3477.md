# differenceInnerTerm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7ab79c85e0d91d794be36e399894f4535a3454b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c060288-c975-b5e0-c4f6-ef0c35a2293a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cf0a150-9bd2-90a9-1bf0-7ed0a3661c01",
  "kind": "theorem",
  "lexical_name": "differenceInnerTerm_integral",
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
  "slug": "differenceinnerterm-integral--edd45268eec11aea785d3477",
  "source": {
    "blob": "d7ab79c85e0d91d794be36e399894f4535a3454b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edd45268eec11aea785d3477cd76882df16ea863bdeccd7823f2da03fcc41e96",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cf0a150-9bd2-90a9-1bf0-7ed0a3661c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceInnerTerm_integral (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (correlationPrimitive A (Real.log (q * (l : ℝ))) -
          sourceCorrelation explicitSecondDerivative A (Real.log (q * (l : ℝ)))) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  calc
    _ = ∫ x in Set.Ioi (1 : ℝ), Real.log (l : ℝ) *
        rootWeight (correlationDifference A) (q * (l : ℝ)) x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact differenceInnerTerm_eq A q x l hq (zero_lt_one.trans hx) hl
    _ = _ := by
      rw [integral_const_mul, rootWeight_difference_integral A (q * (l : ℝ)) hA (mul_pos hq hl0)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ab79c85e0d91d794be36e399894f4535a3454b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
