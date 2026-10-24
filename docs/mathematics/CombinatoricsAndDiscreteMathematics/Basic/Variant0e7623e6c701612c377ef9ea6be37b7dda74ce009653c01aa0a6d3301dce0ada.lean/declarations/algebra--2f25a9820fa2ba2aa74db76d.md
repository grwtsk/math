# algebra'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd21f1399faa4b1364ee6c16a5761ab84d74c3c69c2660c9b598006f9518e6dd",
  "kind": "instance",
  "lexical_name": "algebra'",
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
  "slug": "algebra--2f25a9820fa2ba2aa74db76d",
  "source": {
    "blob": "d409b83dda9c620b7c4bf145ecb0328dd9524565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f25a9820fa2ba2aa74db76d72781d9dfb2a5430dfef557da8bc4cead5ec5b5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd21f1399faa4b1364ee6c16a5761ab84d74c3c69c2660c9b598006f9518e6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra' [CommSemiring R'] [SMul R' R] [Algebra R' A] [IsScalarTower R' R A] :
    Algebra R' S :=
  { (algebraMap R' A).codRestrict S fun x => by
      rw [Algebra.algebraMap_eq_smul_one, ← smul_one_smul R x (1 : A), ←
        Algebra.algebraMap_eq_smul_one]
      exact algebraMap_mem S
          _ with
    commutes' := fun c x => Subtype.eq <| Algebra.commutes _ _
    smul_def' := fun c x => Subtype.eq <| Algebra.smul_def _ _ }
#align subalgebra.algebra' Subalgebra.algebra'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d409b83dda9c620b7c4bf145ecb0328dd9524565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
