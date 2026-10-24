# dist_lt_of_dist_lt_modulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25f94fb9-d6df-0cfb-31dc-5646d80bfb7c",
  "kind": "theorem",
  "lexical_name": "dist_lt_of_dist_lt_modulus",
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
  "slug": "dist-lt-of-dist-lt-modulus--d1b42597473bb71b75963d48",
  "source": {
    "blob": "d36bc223a458d8d2ecf66dae972ae75ea3bddde6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant52230d7e90e4591a83bbfdec4ff9e23d08ce30099c2438646dd68809da649512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b42597473bb71b75963d48728b1cc50bfe0cd3d3f6526e724380a51f52da6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant52230d7e90e4591a83bbfdec4ff9e23d08ce30099c2438646dd68809da649512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f94fb9-d6df-0cfb-31dc-5646d80bfb7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_of_dist_lt_modulus (f : C(α, β)) (ε : ℝ) (h : 0 < ε) {a b : α}
    (w : dist a b < f.modulus ε h) : dist (f a) (f b) < ε :=
  (Classical.choose_spec (uniform_continuity f ε h)).2 w
#align continuous_map.dist_lt_of_dist_lt_modulus ContinuousMap.dist_lt_of_dist_lt_modulus

end UniformContinuity

end ContinuousMap

section CompLeft

variable (X : Type*) {𝕜 β γ : Type*} [TopologicalSpace X] [CompactSpace X]
  [NontriviallyNormedField 𝕜]

variable [NormedAddCommGroup β] [NormedSpace 𝕜 β] [NormedAddCommGroup γ] [NormedSpace 𝕜 γ]

open ContinuousMap

/-- Postcomposition of continuous functions into a normed module by a continuous linear map is a
continuous linear map.
Transferred version of `ContinuousLinearMap.compLeftContinuousBounded`,
upgraded version of `ContinuousLinearMap.compLeftContinuous`,
similar to `LinearMap.compLeft`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant52230d7e90e4591a83bbfdec4ff9e23d08ce30099c2438646dd68809da649512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant52230d7e90e4591a83bbfdec4ff9e23d08ce30099c2438646dd68809da649512.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36bc223a458d8d2ecf66dae972ae75ea3bddde6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
