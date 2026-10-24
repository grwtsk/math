# correctedTransform_analytic_positive_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a76386f5-7af2-732b-3489-718cd521c572",
  "kind": "theorem",
  "lexical_name": "correctedTransform_analytic_positive_real",
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
  "slug": "correctedtransform-analytic-positive-real--bbe79253d39b3241934b6d3d",
  "source": {
    "blob": "e7826ef9fdd8d2e2277066b91a63c32323477813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe79253d39b3241934b6d3d1ff28b46bcf25563ea366b311ff6dbe612fba17d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a76386f5-7af2-732b-3489-718cd521c572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedTransform_analytic_positive_real
    (C : ℝ) (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ (correctedTransform C) (σ : ℂ) := by
  exact
    (continuedTransform_analytic_positive_real σ hσ).add
      (analyticAt_const.mul
        (correctionKernel_analytic (σ : ℂ)
          (by exact_mod_cast hσ.ne')))

/-- The complete correction data produced by the exact B3.4 uniform lower-bound
hypothesis.  No Landau contradiction is taken in this checkpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7826ef9fdd8d2e2277066b91a63c32323477813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
