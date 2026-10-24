# differenceInnerTerm_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd6db04b-8d85-b174-96c2-c79c260251fb",
  "kind": "theorem",
  "lexical_name": "differenceInnerTerm_integrable",
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
  "slug": "differenceinnerterm-integrable--81edea856563826166513daa",
  "source": {
    "blob": "dc0c528a79568af1f92d78fe186300e2eafce3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81edea856563826166513daa4cf5a8a209b68598b68197739b9beb39de19c4ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6db04b-8d85-b174-96c2-c79c260251fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceInnerTerm_integrable (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    IntegrableOn (differenceInnerTerm A q l) (Set.Ioi 1) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  have hi : IntegrableOn (fun x ↦ Real.log (l : ℝ) *
      rootWeight (correlationDifference A) (q * (l : ℝ)) x) (Set.Ioi 1) :=
    (rootWeight_integrable (correlationDifference A) (q * (l : ℝ)) (mul_pos hq hl0)
      (CorrelationSecondDerivative.correlationDifference_contDiff A hA).continuous
      (CorrelationSecondDerivative.correlationDifference_hasCompactSupport A hA)).const_mul _
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (differenceInnerTerm_eq A q x l hq (zero_lt_one.trans hx) hl).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant5ba7a94f126d92d0ba3ba4c0edc880176a153dddb7ea12a5865eaba4a8a733fa.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc0c528a79568af1f92d78fe186300e2eafce3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
