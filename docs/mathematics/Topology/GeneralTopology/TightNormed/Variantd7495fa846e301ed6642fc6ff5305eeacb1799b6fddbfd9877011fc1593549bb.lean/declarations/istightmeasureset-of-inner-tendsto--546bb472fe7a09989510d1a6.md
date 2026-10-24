# isTightMeasureSet_of_inner_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e84dd8f2-2f63-1989-fcb1-68ba5dfe2b8a",
  "kind": "lemma",
  "lexical_name": "isTightMeasureSet_of_inner_tendsto",
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
  "slug": "istightmeasureset-of-inner-tendsto--546bb472fe7a09989510d1a6",
  "source": {
    "blob": "00bb98a6312309c2ac1f7a1558672b77199a7dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546bb472fe7a09989510d1a6905714f7542273729a417a099d90fd7f0b5753e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84dd8f2-2f63-1989-fcb1-68ba5dfe2b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTightMeasureSet_of_inner_tendsto
    (h : ∀ y, Tendsto (fun r : ℝ ↦ ⨆ μ ∈ S, μ {x | r < ‖⟪y, x⟫_𝕜‖}) atTop (𝓝 0)) :
    IsTightMeasureSet S :=
  isTightMeasureSet_of_forall_basis_tendsto (stdOrthonormalBasis 𝕜 E)
    fun i ↦ h (stdOrthonormalBasis 𝕜 E i)

variable (𝕜) in
/-- In a finite-dimensional inner product space,
a set of measures `S` is tight if and only if the function `r ↦ ⨆ μ ∈ S, μ {x | r < |⟪y, x⟫|}`
tends to `0` at infinity for all `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00bb98a6312309c2ac1f7a1558672b77199a7dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
