# estimate_of_actual_leading_signed_tail_numeric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2d711ac-47eb-d53a-04bc-9a6ab2ae03b9",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_leading_signed_tail_numeric",
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
  "slug": "estimate-of-actual-leading-signed-tail-numeric--f4321e2c84f2a4e848224c01",
  "source": {
    "blob": "c2dc1eb43fbb136b454eff7c15f7905e440fd845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4321e2c84f2a4e848224c014d76b73913a4b4bccbc1c22aa2306d5cb2289757",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2d711ac-47eb-d53a-04bc-9a6ab2ae03b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_leading_signed_tail_numeric {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_renormalized_actual_signed_tail (K := K + 29688) hR
  intro A hRA
  have he := (abs_le.mp (renormalized_tail_sub_leading_abs_le_numeric (hR.trans hRA))).2
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceNumericLeadingTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2dc1eb43fbb136b454eff7c15f7905e440fd845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
