# sourcePlainKernel_sub_mainTerm_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ff5cc0-db74-ab2a-f005-7ef69d0bf11d",
  "kind": "theorem",
  "lexical_name": "sourcePlainKernel_sub_mainTerm_abs_le",
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
  "slug": "sourceplainkernel-sub-mainterm-abs-le--964744fc05d40e996257e6a9",
  "source": {
    "blob": "5f4b38d73d172cf41f1eab3f8894aea65a5bb95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/29SourceShortSamplingPointwise/Variantd1da14da8922fd7c626226e8d814074fbc912e31744233d5b8aa478a98638346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:964744fc05d40e996257e6a9d52683042da685ab4e6d2f7ed0e9b7258d205c4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/29SourceShortSamplingPointwise/Variantd1da14da8922fd7c626226e8d814074fbc912e31744233d5b8aa478a98638346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ff5cc0-db74-ab2a-f005-7ef69d0bf11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainKernel_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |sourcePlainKernel A k - sourcePlainSamplingMainTerm A k| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
  rw [← plainProfile_sum_eq_sourcePlainKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact plainProfile_sum_sub_mainTerm_abs_le hA hk

/-- The actual closed logarithmic source kernel retains the whole positive-axis cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/29SourceShortSamplingPointwise/Variantd1da14da8922fd7c626226e8d814074fbc912e31744233d5b8aa478a98638346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/29SourceShortSamplingPointwise/Variantd1da14da8922fd7c626226e8d814074fbc912e31744233d5b8aa478a98638346.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4b38d73d172cf41f1eab3f8894aea65a5bb95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
