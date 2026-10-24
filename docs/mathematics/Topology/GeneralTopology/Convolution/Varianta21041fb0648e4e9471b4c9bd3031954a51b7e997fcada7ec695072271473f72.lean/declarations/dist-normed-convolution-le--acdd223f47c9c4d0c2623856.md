# dist_normed_convolution_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6324fc3e-f7e5-a6e2-371f-6079eef7c46d",
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
  "slug": "dist-normed-convolution-le--acdd223f47c9c4d0c2623856",
  "source": {
    "blob": "cf0dd189f5d6211dcceebb5284a04bfca758eed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acdd223f47c9c4d0c262385695e9b688e160242a2eb61a7dddf26859d5116330",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6324fc3e-f7e5-a6e2-371f-6079eef7c46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_normed_convolution_le {x₀ : G} {ε : ℝ} (hmg : AEStronglyMeasurable g μ)
    (hg : ∀ x ∈ ball x₀ φ.rOut, dist (g x) (g x₀) ≤ ε) :
    dist ((φ.normed μ ⋆[lsmul ℝ ℝ, μ] g : G → E') x₀) (g x₀) ≤ ε :=
  dist_convolution_le (by simp_rw [← dist_self (g x₀), hg x₀ (mem_ball_self φ.rOut_pos)])
    φ.support_normed_eq.subset φ.nonneg_normed φ.integral_normed hmg hg

/-- `(φ i ⋆ g i) (k i)` tends to `z₀` as `i` tends to some filter `l` if
* `φ` is a sequence of normed bump functions
  such that `(φ i).rOut` tends to `0` as `i` tends to `l`;
* `g i` is `μ`-a.e. strongly measurable as `i` tends to `l`;
* `g i x` tends to `z₀` as `(i, x)` tends to `l ×ˢ 𝓝 x₀`;
* `k i` tends to `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0dd189f5d6211dcceebb5284a04bfca758eed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
