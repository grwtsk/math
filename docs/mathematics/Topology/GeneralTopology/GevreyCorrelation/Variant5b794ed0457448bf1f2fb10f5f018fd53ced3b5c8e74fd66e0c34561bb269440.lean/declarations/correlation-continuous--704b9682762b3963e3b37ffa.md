# correlation_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd2732fd-1a1d-3327-dec4-a103db8de431",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1250632-4bd8-66e3-1b16-5b581d7577a9",
  "kind": "theorem",
  "lexical_name": "correlation_continuous",
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
  "slug": "correlation-continuous--704b9682762b3963e3b37ffa",
  "source": {
    "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:704b9682762b3963e3b37ffadddc37d86911c378367ac039551a892aba3201c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1250632-4bd8-66e3-1b16-5b581d7577a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_continuous {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    Continuous (correlation h A) := by
  have href : support (fun x ↦ normalizedOperator h A (-x)) ⊆ Icc (-A) A := by
    intro x hx
    obtain ⟨hl, hr⟩ := normalizedOperator_support hs hA hx
    constructor <;> linarith
  have hcompact : HasCompactSupport (fun x ↦ normalizedOperator h A (-x)) :=
    HasCompactSupport.of_support_subset_isCompact isCompact_Icc href
  rw [correlation_eq_convolution]
  exact hcompact.continuous_convolution_right (ContinuousLinearMap.mul ℝ ℝ)
    ((normalizedOperator_integrable hc (profile_hasCompactSupport hs) hA).1.locallyIntegrable)
    ((normalizedOperator_continuous hc A).comp continuous_neg)

/-- Correlation compact support is in the displacement radius `2A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
