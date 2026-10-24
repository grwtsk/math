# dist_normed_convolution_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6542b119-94e4-867c-57cd-d2b0b8a7fa68",
  "kind": "theorem",
  "lexical_name": "dist_normed_convolution_le",
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
  "slug": "dist-normed-convolution-le--13e03b80b792d353fdfe3136",
  "source": {
    "blob": "edd59d913195a9d28bba780666aea0e50dbd23ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e03b80b792d353fdfe3136ecbe977058839a1d2f5a292d2c83a0c170dcf3c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6542b119-94e4-867c-57cd-d2b0b8a7fa68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_normed_convolution_le {x₀ : G} {ε : ℝ} (hmg : AEStronglyMeasurable g μ)
    (hg : ∀ x ∈ ball x₀ φ.rOut, dist (g x) (g x₀) ≤ ε) :
    dist ((φ.normed μ ⋆[lsmul ℝ ℝ, μ] g : G → E') x₀) (g x₀) ≤ ε :=
  dist_convolution_le (by simp_rw [← dist_self (g x₀), hg x₀ (mem_ball_self φ.rOut_pos)])
    φ.support_normed_eq.subset φ.nonneg_normed φ.integral_normed hmg hg
#align cont_diff_bump.dist_normed_convolution_le ContDiffBump.dist_normed_convolution_le

/-- `(φ i ⋆ g i) (k i)` tends to `z₀` as `i` tends to some filter `l` if
* `φ` is a sequence of normed bump functions
  such that `(φ i).rOut` tends to `0` as `i` tends to `l`;
* `g i` is `μ`-a.e. strongly measurable as `i` tends to `l`;
* `g i x` tends to `z₀` as `(i, x)` tends to `l ×ˢ 𝓝 x₀`;
* `k i` tends to `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edd59d913195a9d28bba780666aea0e50dbd23ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
