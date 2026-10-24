# hasSum_iff_tendsto_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43fdfd4d-212a-b538-c9b6-e8af168f113a",
  "kind": "theorem",
  "lexical_name": "hasSum_iff_tendsto_nat",
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
  "slug": "hassum-iff-tendsto-nat--6ea9a8d0506c65fc3541127a",
  "source": {
    "blob": "9fb6e90572a5b4a3e20fa935346a75b02028add1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 208,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variantd0f14dbb3bb3f1d9dd20f02b9ae4d277541793ddaa1171c611790615e1373052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ea9a8d0506c65fc3541127af592769f882eee989d383c7a1fc416bdf0bdf2d0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ENNReal/Variantd0f14dbb3bb3f1d9dd20f02b9ae4d277541793ddaa1171c611790615e1373052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43fdfd4d-212a-b538-c9b6-e8af168f113a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_iff_tendsto_nat {f : ℕ → ℝ≥0∞} (r : ℝ≥0∞) :
    HasSum f r ↔ Tendsto (fun n : ℕ => ∑ i ∈ Finset.range n, f i) atTop (𝓝 r) := by
  refine ⟨HasSum.tendsto_sum_nat, fun h => ?_⟩
  rw [← iSup_eq_of_tendsto _ h, ← ENNReal.tsum_eq_iSup_nat]
  · exact ENNReal.summable.hasSum
  · exact fun s t hst => Finset.sum_le_sum_of_subset (Finset.range_subset_range.2 hst)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ENNReal/Variantd0f14dbb3bb3f1d9dd20f02b9ae4d277541793ddaa1171c611790615e1373052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variantd0f14dbb3bb3f1d9dd20f02b9ae4d277541793ddaa1171c611790615e1373052.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb6e90572a5b4a3e20fa935346a75b02028add1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
