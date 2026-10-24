# sourcePlainKernel_sub_mainTerm_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b762977f-2a8f-3a56-be60-4d7eeb3c57ce",
  "kind": "theorem",
  "lexical_name": "sourcePlainKernel_sub_mainTerm_abs_le_tail",
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
  "slug": "sourceplainkernel-sub-mainterm-abs-le-tail--bb0ffea66b2f6589c418450b",
  "source": {
    "blob": "be2ce417c9e5b17454d98dc97284998b15526ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0ffea66b2f6589c418450bf85a824af729c58d5161d84fd435d801a3adeffc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b762977f-2a8f-3a56-be60-4d7eeb3c57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainKernel_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |sourcePlainKernel A k - sourcePlainSamplingMainTerm A k| ≤
      16 * tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) := by
  rw [← plainProfile_sum_eq_sourcePlainKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact plainProfile_sum_sub_mainTerm_abs_le_tail hQ hQA hk

/-- The literal Mobius logarithmic kernel keeps the whole positive axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant8c9994789391fe93462267d38cd67efd3507568705e9ed2ccc5b3433be5cdd52.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2ce417c9e5b17454d98dc97284998b15526ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
