# QuadraticModuleCat.cliffordAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d013d83b16a15d24f084b31e3362b87a9dc86f9a3a2695ff8b2d933a91c27e38",
  "kind": "def",
  "lexical_name": "QuadraticModuleCat.cliffordAlgebra",
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
  "slug": "quadraticmodulecat-cliffordalgebra--1416f6e2b186421879fc00e6",
  "source": {
    "blob": "5d7ad8cf24424e7a041d45991708bb341eabd41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/CategoryTheory/Variant08c42d45402d99ef34cc77f346d07d8f52da325f6d359faa65f1b9eac3bb50fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1416f6e2b186421879fc00e664851227433b8a21320b5f5d24faf6c91bdc9f3b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CategoryTheory/Variant08c42d45402d99ef34cc77f346d07d8f52da325f6d359faa65f1b9eac3bb50fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d013d83b16a15d24f084b31e3362b87a9dc86f9a3a2695ff8b2d933a91c27e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def QuadraticModuleCat.cliffordAlgebra : QuadraticModuleCat.{u} R ⥤ AlgCat.{u} R where
  obj M := ↧(CliffordAlgebra M.form)
  map {_M _N} f := AlgCat.ofHom <| CliffordAlgebra.map f.toIsometry
  map_id _M := by simp
  map_comp {_M _N _P} f g := by ext; simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CategoryTheory/Variant08c42d45402d99ef34cc77f346d07d8f52da325f6d359faa65f1b9eac3bb50fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CategoryTheory/Variant08c42d45402d99ef34cc77f346d07d8f52da325f6d359faa65f1b9eac3bb50fd.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7ad8cf24424e7a041d45991708bb341eabd41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
