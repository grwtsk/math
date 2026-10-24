# aevalTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25c198109110e16dc1e9d0a159a998e5120c3c0e2fe3405d57ae939238f98f5",
  "kind": "def",
  "lexical_name": "aevalTower",
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
  "slug": "aevaltower--a2720ffa71687fcdc755703e",
  "source": {
    "blob": "ba868ecae0992f2d4099fbdf3717bdfa4bff64d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 720,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2720ffa71687fcdc755703e8d625b050a4269d2b167369ad174b5f13ae5fc8a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a25c198109110e16dc1e9d0a159a998e5120c3c0e2fe3405d57ae939238f98f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def aevalTower (f : R →ₐ[S] A) (X : σ → A) : MvPolynomial σ R →ₐ[S] A :=
  { eval₂Hom (↑f) X with
    commutes' := fun r => by
      simp [IsScalarTower.algebraMap_eq S R (MvPolynomial σ R), algebraMap_eq] }

variable (g : R →ₐ[S] A) (y : σ → A)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba868ecae0992f2d4099fbdf3717bdfa4bff64d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
