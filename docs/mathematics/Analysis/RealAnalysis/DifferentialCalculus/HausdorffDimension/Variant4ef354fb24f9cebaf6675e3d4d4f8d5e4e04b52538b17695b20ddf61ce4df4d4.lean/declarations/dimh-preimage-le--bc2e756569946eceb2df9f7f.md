# dimH_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8cf698b-d6ae-8bd1-e678-c31da6d1c0cd",
  "kind": "theorem",
  "lexical_name": "dimH_preimage_le",
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
  "slug": "dimh-preimage-le--bc2e756569946eceb2df9f7f",
  "source": {
    "blob": "ba539c7f285a8afa285b03b8f86e043c1b272726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 439,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2e756569946eceb2df9f7f8b5d690cf3a71c12c1100b6829934546cbd8f0ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8cf698b-d6ae-8bd1-e678-c31da6d1c0cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dimH_preimage_le (hf : AntilipschitzWith K f) (s : Set Y) : dimH (f ⁻¹' s) ≤ dimH s := by
  borelize X Y
  refine dimH_le fun d hd => le_dimH_of_hausdorffMeasure_eq_top ?_
  have := hf.hausdorffMeasure_preimage_le d.coe_nonneg s
  rw [hd, top_le_iff] at this
  contrapose! this
  exact ENNReal.mul_ne_top (by simp) this
set_option linter.uppercaseLean3 false in
#align antilipschitz_with.dimH_preimage_le AntilipschitzWith.dimH_preimage_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant4ef354fb24f9cebaf6675e3d4d4f8d5e4e04b52538b17695b20ddf61ce4df4d4.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba539c7f285a8afa285b03b8f86e043c1b272726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
