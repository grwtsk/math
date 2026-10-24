# restrictHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:495efadbb64e0a34d96d11052361c269c972e672a7d13140fbe0d6131bf461ed",
  "kind": "def",
  "lexical_name": "restrictHom",
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
  "slug": "restricthom--4b39097c6f8f010cedb3960e",
  "source": {
    "blob": "472c75265f50a72ffbf12ac68b34d66fcb813d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 441,
    "path": "GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b39097c6f8f010cedb3960ed698af47c5c066ce9c98dfc49d11aaf14283bf29",
  "verification": {
    "reference": "docs/verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:495efadbb64e0a34d96d11052361c269c972e672a7d13140fbe0d6131bf461ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictHom [Finite G] [Finite G'] [MulSemiringAction G C] [IsGaloisGroup G A C]
    [MulSemiringAction G' B] [IsGaloisGroup G' A B] :
    G →* G' :=
  letI A := (algebraMap A B).range
  haveI : IsDomain B := IsDomain.of_faithfulSMul B C
  letI : MulSemiringAction G (FractionRing C) :=
    IsFractionRing.mulSemiringAction G C (FractionRing C)
  letI N := fixingSubgroup G (Set.range (algebraMap (FractionRing B) (FractionRing C)))
  haveI : IsGaloisGroup N (FractionRing B) (FractionRing C) :=
    of_isScalarTower G (FractionRing A) (FractionRing C) (FractionRing B)
  letI : MulSemiringAction G' (FractionRing B) :=
    IsFractionRing.mulSemiringAction G' B (FractionRing B)
  haveI := isGalois G' (FractionRing A) (FractionRing B)
  haveI : N.Normal := normal_of_isGalois G (FractionRing A) (FractionRing C) N (FractionRing B)
  (quotientMulEquiv G G' (FractionRing A) (FractionRing B) (FractionRing C) N).toMonoidHom.comp
    (QuotientGroup.mk' N)

attribute [local instance] FractionRing.liftAlgebra in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c75265f50a72ffbf12ac68b34d66fcb813d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
