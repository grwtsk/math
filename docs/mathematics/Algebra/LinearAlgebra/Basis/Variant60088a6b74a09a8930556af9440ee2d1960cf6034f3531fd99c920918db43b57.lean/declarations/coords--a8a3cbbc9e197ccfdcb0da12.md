# coords

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:724f8e7ffbfed86496ff938abce9747654e78f685a70cd1005ef12f1ed2b8551",
  "kind": "def",
  "lexical_name": "coords",
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
  "slug": "coords--a8a3cbbc9e197ccfdcb0da12",
  "source": {
    "blob": "0cb656b7fefaff79b689922cdf0c672b648a98a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 282,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a3cbbc9e197ccfdcb0da12fbd56e5571e3cdb777c36c59bb5254cdc15947a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:724f8e7ffbfed86496ff938abce9747654e78f685a70cd1005ef12f1ed2b8551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coords : P →ᵃ[k] ι → k where
  toFun q i := b.coord i q
  linear :=
    { toFun := fun v i => -(b.basisOf i).sumCoords v
      map_add' := fun v w => by
        ext i
        simp only [LinearMap.map_add, Pi.add_apply, neg_add]
      map_smul' := fun t v => by
        ext i
        simp only [LinearMap.map_smul, Pi.smul_apply, smul_neg, RingHom.id_apply, mul_neg] }
  map_vadd' p v := by
    ext i
    -- Porting note:
    -- mathlib3 proof was:
    -- simp only [linear_eq_sumCoords, LinearMap.coe_mk, LinearMap.neg_apply, Pi.vadd_apply',
    --   AffineMap.map_vadd]
    -- but now we need to `dsimp` before `AffineMap.map_vadd` works.
    rw [LinearMap.coe_mk, Pi.vadd_apply']
    dsimp
    rw [AffineMap.map_vadd, linear_eq_sumCoords,
        LinearMap.neg_apply]
    simp only [ne_eq, Basis.coe_sumCoords, vadd_eq_add]
#align affine_basis.coords AffineBasis.coords

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb656b7fefaff79b689922cdf0c672b648a98a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
