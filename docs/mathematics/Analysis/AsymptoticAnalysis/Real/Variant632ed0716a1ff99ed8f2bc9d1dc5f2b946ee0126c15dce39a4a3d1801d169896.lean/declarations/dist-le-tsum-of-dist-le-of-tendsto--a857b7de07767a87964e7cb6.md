# dist_le_tsum_of_dist_le_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee41be10-2d0b-e9a5-ad2d-cc93f8231d23",
  "kind": "theorem",
  "lexical_name": "dist_le_tsum_of_dist_le_of_tendsto",
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
  "slug": "dist-le-tsum-of-dist-le-of-tendsto--a857b7de07767a87964e7cb6",
  "source": {
    "blob": "ebbc93419abf5b8686402f07dd751a8d642aec1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a857b7de07767a87964e7cb6e5b3e36a31d521e2a810bafe63df8e6120158ea8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee41be10-2d0b-e9a5-ad2d-cc93f8231d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_tsum_of_dist_le_of_tendsto (d : ℕ → ℝ) (hf : ∀ n, dist (f n) (f n.succ) ≤ d n)
    (hd : Summable d) {a : α} (ha : Tendsto f atTop (𝓝 a)) (n : ℕ) :
    dist (f n) a ≤ ∑' m, d (n + m) := by
  refine le_of_tendsto (tendsto_const_nhds.dist ha) (eventually_atTop.2 ⟨n, fun m hnm ↦ ?_⟩)
  refine le_trans (dist_le_Ico_sum_of_dist_le hnm fun _ _ ↦ hf _) ?_
  rw [sum_Ico_eq_sum_range]
  refine Summable.sum_le_tsum (range _) (fun _ _ ↦ le_trans dist_nonneg (hf _)) ?_
  exact hd.comp_injective (add_right_injective n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Real/Variant632ed0716a1ff99ed8f2bc9d1dc5f2b946ee0126c15dce39a4a3d1801d169896.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbc93419abf5b8686402f07dd751a8d642aec1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
