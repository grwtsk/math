# hausdorffMeasure_le_liminf_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d895510c-84f0-678f-f850-290734b6474e",
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
  "slug": "hausdorffmeasure-le-liminf-sum--e5d9433cf3e2e0840f06f891",
  "source": {
    "blob": "e83fe34bf6c8572092724fd8cf11f2c54e7b1080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 571,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d9433cf3e2e0840f06f8914f356c5c4695e6602a2a738474b048692a1dfd06",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d895510c-84f0-678f-f850-290734b6474e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_le_liminf_sum {β : Type*} {ι : β → Type*} [∀ n, Fintype (ι n)]
    (d : ℝ) (s : Set X) {l : Filter β} (r : β → ℝ≥0∞) (hr : Tendsto r l (𝓝 0))
    (t : ∀ n : β, ι n → Set X) (ht : ∀ᶠ n in l, ∀ i, ediam (t n i) ≤ r n)
    (hst : ∀ᶠ n in l, s ⊆ ⋃ i, t n i) : μH[d] s ≤ liminf (fun n => ∑ i, ediam (t n i) ^ d) l :=
  mkMetric_le_liminf_sum s r hr t ht hst _

/-- If `d₁ < d₂`, then for any set `s` we have either `μH[d₂] s = 0`, or `μH[d₁] s = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83fe34bf6c8572092724fd8cf11f2c54e7b1080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
