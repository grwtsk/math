# HasCompactSupport.convolution_integrand_bound_right_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92f6ad58-4876-f805-7e2e-357c5d08e63d",
  "kind": "theorem",
  "lexical_name": "HasCompactSupport.convolution_integrand_bound_right_of_subset",
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
  "slug": "hascompactsupport-convolution-integrand-bound-right-of-subset--3c6dc43fb0ac0722950430c8",
  "source": {
    "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 140,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6dc43fb0ac0722950430c8336436a4171fec477e00762e4423b51b02e6193c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92f6ad58-4876-f805-7e2e-357c5d08e63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactSupport.convolution_integrand_bound_right_of_subset (hcg : HasCompactSupport g)
    (hg : Continuous g) {x t : G} {s u : Set G} (hx : x ∈ s) (hu : -tsupport g + s ⊆ u) :
    ‖L (f t) (g (x - t))‖ ≤ u.indicator (fun t => ‖L‖ * ‖f t‖ * ⨆ i, ‖g i‖) t := by
  refine convolution_integrand_bound_right_of_le_of_subset _ (fun i => ?_) hx hu
  exact le_ciSup (hg.norm.bddAbove_range_of_hasCompactSupport hcg.norm) _
#align has_compact_support.convolution_integrand_bound_right_of_subset HasCompactSupport.convolution_integrand_bound_right_of_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
