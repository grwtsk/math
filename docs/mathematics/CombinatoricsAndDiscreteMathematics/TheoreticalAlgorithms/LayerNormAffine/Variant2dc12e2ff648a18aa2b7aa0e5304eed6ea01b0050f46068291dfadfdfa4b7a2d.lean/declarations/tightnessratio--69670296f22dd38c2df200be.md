# tightnessRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:219aec3465132cc93fd026e58c52c7cba92b27f8ac35b649d7ca3e8950e5250c",
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
  "slug": "tightnessratio--69670296f22dd38c2df200be",
  "source": {
    "blob": "13d69f99b1c0e8351c9445300c75520a6ccc8b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69670296f22dd38c2df200be3cd10b76a98605515092f7d7e2443d2e6effc206",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:219aec3465132cc93fd026e58c52c7cba92b27f8ac35b649d7ca3e8950e5250c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–123.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d69f99b1c0e8351c9445300c75520a6ccc8b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
