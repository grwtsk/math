# actualZeroHeightHead_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0072238-7777-6fda-792b-c0778be813a9",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightHead_scaled_tendsto_zero",
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
  "slug": "actualzeroheighthead-scaled-tendsto-zero--bb6fa4dd6e1ee73118434bbd",
  "source": {
    "blob": "3c18a6e726c34e42f77edbe825d35a13a16b8a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant0378b724be2c0394fa8fa1db6d7db5c76ed738da3d36a5eb37c5ba71830615f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb6fa4dd6e1ee73118434bbdc96c1d6356f4fc7ad8e3daaaefbf0921c28edc97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant0378b724be2c0394fa8fa1db6d7db5c76ed738da3d36a5eb37c5ba71830615f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0072238-7777-6fda-792b-c0778be813a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightHead_scaled_tendsto_zero (R : ℝ) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualZeroHeightHead A R) atTop (𝓝 0) := by
  classical
  have hh := tendsto_finsetSum (actualZeroHeightHead_finite R).toFinset
    (a := fun _ => (0 : ℂ)) (fun rho _ =>
      by simpa only [mul_zero] using
        (actualCarrierMellin_scaled_tendsto_zero rho).const_mul
          ((zetaZeros zetaSeam).mult rho : ℂ))
  simpa only [actualZeroHeightHead, Finset.mul_sum, mul_left_comm, mul_zero,
    Finset.sum_const_zero] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant0378b724be2c0394fa8fa1db6d7db5c76ed738da3d36a5eb37c5ba71830615f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant0378b724be2c0394fa8fa1db6d7db5c76ed738da3d36a5eb37c5ba71830615f6.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c18a6e726c34e42f77edbe825d35a13a16b8a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
