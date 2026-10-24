# mem_forwardAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87e96151-fcf9-df81-db23-206430536740",
  "kind": "theorem",
  "lexical_name": "mem_forwardAffine",
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
  "slug": "mem-forwardaffine--db1749bc2fd0b31f216b6ac8",
  "source": {
    "blob": "92de641acf54b65ae162706426e8eac74467b8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db1749bc2fd0b31f216b6ac85357b069161ba5418dfb04ca927c74b6f02e2a84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87e96151-fcf9-df81-db23-206430536740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_forwardAffine {xs : List ℝ} {Is : IntervalVector}
    (params : LayerNormParams)
    (eps : AffineForm.NoiseAssignment)
    (hvalid : AffineForm.validNoise eps)
    (hmem : AffineVector.mem xs (AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat)) eps)
    (hne : ¬(AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat)).isEmpty)
    (hlen_eps :
      eps.length =
        (AffineVector.variance (AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat))
          |>.add (AffineForm.const params.epsilon)).coeffs.length)
    (hlen_sqrt :
      eps.length =
        ((AffineVector.variance (AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat))
          |>.add (AffineForm.const params.epsilon)) |> AffineForm.sqrt).coeffs.length)
    (hsqrt_pos :
      0 <
        ((AffineVector.variance (AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat))
          |>.add (AffineForm.const params.epsilon)) |> AffineForm.sqrt).toInterval.lo) :
    let ys := layerNormReal xs params.gamma params.beta params.epsilon
    AffineVector.mem ys (params.forwardAffine Is) eps := by
  simpa [LayerNormParams.forwardAffine] using
    (AffineVector.mem_layerNorm (v_real := xs)
      (v := AffineVector.ofIntervals (Is.map IntervalDyadic.toIntervalRat))
      (gamma := params.gamma) (beta := params.beta) (epsilon := params.epsilon)
      params.epsilon_pos hvalid hmem hne hlen_eps hlen_sqrt hsqrt_pos)

/-! ## FFNBlock and TransformerBlock with Affine Arithmetic -/

/-- FFNBlock forward pass using affine arithmetic where beneficial.

    Uses affine arithmetic for LayerNorm (where correlation matters),
    standard intervals for linear layers (where it doesn't). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92de641acf54b65ae162706426e8eac74467b8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
