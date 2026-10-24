# IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ef80688-24b9-4b0d-8c4c-38572b660694",
  "kind": "theorem",
  "lexical_name": "IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single",
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
  "slug": "ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single--f53fe0dee3386aa30fcdf1de",
  "source": {
    "blob": "1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 345,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f53fe0dee3386aa30fcdf1deeed9d7d14ccba9e188e9ecfa6ac828a173dce16e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ef80688-24b9-4b0d-8c4c-38572b660694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single
    [DecidableEq ι] [∀ i, DecidableEq (G i)] (hV : IsHilbertSum 𝕜 G V) (W₀ : Π₀ i : ι, G i) :
    ((W₀.sum (γ := lp G 2) fun a b ↦ hV.linearIsometryEquiv (V a b)) : ∀ i, G i) = W₀ := by
  rw [← map_dfinsuppSum]
  rw [← hV.linearIsometryEquiv_symm_apply_dfinsupp_sum_single]
  rw [LinearIsometryEquiv.apply_symm_apply]
  ext i
  simp +contextual [DFinsupp.sum, lp.single_apply]

/-- Given a total orthonormal family `v : ι → E`, `E` is a Hilbert sum of `fun i : ι => 𝕜`
relative to the family of linear isometries `fun i k => k • v i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
