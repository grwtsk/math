# actualFullPhysicalPeriodicInteriorDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1169a96-be7a-61da-beda-0201b55e741a",
  "kind": "theorem",
  "lexical_name": "actualFullPhysicalPeriodicInteriorDensity_intervalIntegrable",
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
  "slug": "actualfullphysicalperiodicinteriordensity-intervalintegrable--398e4031b7ab851b438f78cc",
  "source": {
    "blob": "e68d1811f5c9e0a51c9ff825b47906b3b714c73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variantc0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398e4031b7ab851b438f78cc7e37f722d30bc5f631eee23aa9c5aa17b342551b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variantc0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1169a96-be7a-61da-beda-0201b55e741a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPhysicalPeriodicInteriorDensity_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (actualFullPhysicalPeriodicInteriorDensity A) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have he : actualFullPhysicalPeriodicInteriorDensity A = actualPeriodicInteriorDensity A :=
    funext (actualFullPhysicalPeriodicInteriorDensity_eq hA)
  rw [he]
  exact actualPeriodicInteriorDensity_intervalIntegrable hA

/-- The original adjusted interior equals the full physical density integral at every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variantc0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variantc0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68d1811f5c9e0a51c9ff825b47906b3b714c73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
