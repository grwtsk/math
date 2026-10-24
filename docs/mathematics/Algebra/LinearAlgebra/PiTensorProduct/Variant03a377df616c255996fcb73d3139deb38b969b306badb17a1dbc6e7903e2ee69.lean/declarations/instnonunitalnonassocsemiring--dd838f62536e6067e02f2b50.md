# instNonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d321a800a65a78971018e250c1cdbe27e245eb061c74ca72cd9210a44fcd7acf",
  "kind": "instance",
  "lexical_name": "instNonUnitalNonAssocSemiring",
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
  "slug": "instnonunitalnonassocsemiring--dd838f62536e6067e02f2b50",
  "source": {
    "blob": "d83268dbd3e17ce9b5c05b7197de6b8be092df00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd838f62536e6067e02f2b5082389386c2d605d4e29b3c05a6ff979530aaaffa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d321a800a65a78971018e250c1cdbe27e245eb061c74ca72cd9210a44fcd7acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalNonAssocSemiring : NonUnitalNonAssocSemiring (⨂[R] i, A i) where
  __ := instMul
  __ := (inferInstance : AddCommMonoid (⨂[R] i, A i))
  left_distrib _ _ _ := (mul _).map_add _ _
  right_distrib _ _ _ := mul.map_add₂ _ _ _
  zero_mul _ := mul.map_zero₂ _
  mul_zero _ := map_zero (mul _)

end NonUnitalNonAssocSemiring

noncomputable section NonAssocSemiring

variable [CommSemiring R] [∀ i, NonAssocSemiring (A i)]
variable [∀ i, Module R (A i)] [∀ i, SMulCommClass R (A i) (A i)] [∀ i, IsScalarTower R (A i) (A i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d83268dbd3e17ce9b5c05b7197de6b8be092df00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
