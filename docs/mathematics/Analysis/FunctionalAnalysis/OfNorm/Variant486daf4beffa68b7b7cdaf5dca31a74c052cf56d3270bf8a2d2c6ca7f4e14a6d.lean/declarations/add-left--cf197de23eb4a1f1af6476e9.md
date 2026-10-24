# add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efc56d57-42cb-1b79-a318-ba87b113ba64",
  "kind": "theorem",
  "lexical_name": "add_left",
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
  "slug": "add-left--cf197de23eb4a1f1af6476e9",
  "source": {
    "blob": "81dee46209158c06302fb5a0bed39c56ecfe35dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf197de23eb4a1f1af6476e96edfeb9be2194e2b3cb8744dbe7416296453f631",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc56d57-42cb-1b79-a318-ba87b113ba64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_left (x y z : E) : inner_ 𝕜 (x + y) z = inner_ 𝕜 x z + inner_ 𝕜 y z := by
  unfold inner_
  have h1 := parallelogram_identity (x + y + z) (x - z)
  have h2 := parallelogram_identity (x + y - z) (x + z)
  have h3 := parallelogram_identity (y + z) z
  have h4 := parallelogram_identity (y - z) z
  have h5 := parallelogram_identity ((I : 𝕜) • (x + y) + z) ((I : 𝕜) • x - z)
  have h6 := parallelogram_identity ((I : 𝕜) • (x + y) - z) ((I : 𝕜) • x + z)
  have h7 := parallelogram_identity ((I : 𝕜) • y + z) z
  have h8 := parallelogram_identity ((I : 𝕜) • y - z) z
  apply_fun 𝓚 at h1 h2 h3 h4 h5 h6 h7 h8
  simp only [map_add, map_mul, map_ofNat] at *
  module_nf with 𝕜 at *
  linear_combination (- h1 + h2 + h3 - h4 + I * (- h5 + h6 + h7 - h8)) / 8

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant486daf4beffa68b7b7cdaf5dca31a74c052cf56d3270bf8a2d2c6ca7f4e14a6d.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81dee46209158c06302fb5a0bed39c56ecfe35dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
