# actual_endpoint_correction_required

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c75548a379958c223846fcdf1a0532ff83a9cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bf05e19-3a66-2504-6f31-3ff32c89840d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2730e668-3d75-9af0-ae68-f607245251b8",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_correction_required",
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
  "slug": "actual-endpoint-correction-required--401499ae75f50c1baac58ecb",
  "source": {
    "blob": "8c75548a379958c223846fcdf1a0532ff83a9cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401499ae75f50c1baac58ecb377fc09f0ee458bc90726056f15446e902ce0f82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2730e668-3d75-9af0-ae68-f607245251b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_correction_required {A : ℝ} (hA : 0 < A) :
    criticalCumulativeDiscrepancy (2 * A) ≠ primeLogError (2 * A) := by
  rw [criticalCumulativeDiscrepancy_eq]
  have hh : criticalDecay (2 * A) < 1 := by
    unfold criticalDecay
    rw [Real.exp_lt_one_iff]
    linarith
  linarith

end FormalResearch.RiemannHypothesis.SourceCumulativeScopeFixtures
open FormalResearch.RiemannHypothesis.SourceCumulativeScopeFixtures
#check @missing_endpoint_one_rejected
#print axioms missing_endpoint_one_rejected
#check @actual_preprime_discrepancy_negative
#print axioms actual_preprime_discrepancy_negative
#check @actual_touching_prime_retained_zero_factor
#print axioms actual_touching_prime_retained_zero_factor
#check @actual_endpoint_correction_required
#print axioms actual_endpoint_correction_required
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c75548a379958c223846fcdf1a0532ff83a9cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
