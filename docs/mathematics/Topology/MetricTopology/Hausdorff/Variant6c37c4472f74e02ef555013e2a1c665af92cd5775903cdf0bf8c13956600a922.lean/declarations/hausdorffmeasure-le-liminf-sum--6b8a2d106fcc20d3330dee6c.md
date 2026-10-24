# hausdorffMeasure_le_liminf_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8825e3f6-df4d-58c2-9eb8-caa7d638ec75",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_le_liminf_sum",
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
  "slug": "hausdorffmeasure-le-liminf-sum--6b8a2d106fcc20d3330dee6c",
  "source": {
    "blob": "065cf771a127130908e3624200b95d0b0a238f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 570,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b8a2d106fcc20d3330dee6c2cc50be5549ed2846cc14c4f137692f35e1d7e60",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8825e3f6-df4d-58c2-9eb8-caa7d638ec75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_le_liminf_sum {β : Type*} {ι : β → Type*} [∀ n, Fintype (ι n)]
    (d : ℝ) (s : Set X) {l : Filter β} (r : β → ℝ≥0∞) (hr : Tendsto r l (𝓝 0))
    (t : ∀ n : β, ι n → Set X) (ht : ∀ᶠ n in l, ∀ i, diam (t n i) ≤ r n)
    (hst : ∀ᶠ n in l, s ⊆ ⋃ i, t n i) : μH[d] s ≤ liminf (fun n => ∑ i, diam (t n i) ^ d) l :=
  mkMetric_le_liminf_sum s r hr t ht hst _

/-- If `d₁ < d₂`, then for any set `s` we have either `μH[d₂] s = 0`, or `μH[d₁] s = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065cf771a127130908e3624200b95d0b0a238f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
