# regularizedMass_le_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07bcfdda6468395315579f7ddc2e35d68f67cc96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea0db926-fcc4-7cfb-2c42-ec7d70a258e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb772616-26d5-524d-3e5d-deba3867f511",
  "kind": "theorem",
  "lexical_name": "regularizedMass_le_norm_sq",
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
  "slug": "regularizedmass-le-norm-sq--881adfc20f2462b1968d7b45",
  "source": {
    "blob": "07bcfdda6468395315579f7ddc2e35d68f67cc96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881adfc20f2462b1968d7b45026f89f4734d082c06333ccc773da330be08c806",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb772616-26d5-524d-3e5d-deba3867f511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem regularizedMass_le_norm_sq
    (S : H →L[ℂ] H) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r : H) :
    regularizedMass S α r ≤ ‖r‖ ^ 2 := by
  have hinner : (inner ℂ r (positiveResolvent S α r)).re ≤
      ‖r‖ ^ 2 * (1 / α) := by
    calc
      _ ≤ ‖inner ℂ r (positiveResolvent S α r)‖ := Complex.re_le_norm _
      _ ≤ ‖r‖ * ‖positiveResolvent S α r‖ := norm_inner_le_norm _ _
      _ ≤ ‖r‖ * (‖positiveResolvent S α‖ * ‖r‖) :=
        mul_le_mul_of_nonneg_left ((positiveResolvent S α).le_opNorm r) (norm_nonneg _)
      _ ≤ ‖r‖ * ((1 / α) * ‖r‖) := by
        gcongr
        exact positiveResolvent_norm_le S hS α hα
      _ = _ := by ring
  calc
    _ ≤ α * (‖r‖ ^ 2 * (1 / α)) := mul_le_mul_of_nonneg_left hinner hα.le
    _ = _ := by field_simp

/-- The original reference has squared norm one half, bounding its actual directional mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07bcfdda6468395315579f7ddc2e35d68f67cc96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
