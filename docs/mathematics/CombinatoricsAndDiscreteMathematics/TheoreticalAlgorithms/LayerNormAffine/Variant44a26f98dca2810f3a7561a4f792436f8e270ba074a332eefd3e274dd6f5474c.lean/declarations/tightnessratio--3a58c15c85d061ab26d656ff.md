# tightnessRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab0d95ce2835ef8b85c4bf35c20c5fd4273c58744a1c7fc11d8f91b6429833a7",
  "kind": "def",
  "lexical_name": "tightnessRatio",
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
  "slug": "tightnessratio--3a58c15c85d061ab26d656ff",
  "source": {
    "blob": "92de641acf54b65ae162706426e8eac74467b8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a58c15c85d061ab26d656ff1994d67f00a0f646cc6cae815dc298678336d4c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab0d95ce2835ef8b85c4bf35c20c5fd4273c58744a1c7fc11d8f91b6429833a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tightnessRatio (params : LayerNormParams) (Is : IntervalVector) (prec : Int := -53)
    : List ℚ :=
  let (interval_bounds, affine_bounds) := params.compareBounds Is prec
  List.zipWith (fun I_int I_aff =>
    let w_int := I_int.hi.toRat - I_int.lo.toRat
    let w_aff := I_aff.hi.toRat - I_aff.lo.toRat
    if w_aff = 0 then 1000  -- Affine gave exact bound
    else w_int / w_aff
  ) interval_bounds affine_bounds

end LayerNormParams

/-! ## Soundness Theorem -/

/-- The affine LayerNorm is sound: if inputs are in the affine forms,
    then outputs are in the resulting affine forms.

    This follows from composition of:
    - `AffineVector.mem_centered` - centering preserves membership
    - `AffineVector.mem_variance` - variance is sound
    - `AffineForm.mem_add` - addition is sound
    - `AffineForm.mem_sqrt` - square root is sound
    - `AffineForm.mem_inv` - inversion is sound
    - `AffineForm.mem_mul`, `AffineForm.mem_scale`, `AffineForm.mem_add` - final combination

    The proof requires additional hypotheses about positivity of variance + epsilon
    and compatibility of lengths, which are handled in the implementation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92de641acf54b65ae162706426e8eac74467b8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
