# ΓCoconstantSheafAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abb059b99d42da8f264c793e837e37bb2d48353c53dae5fbcbe48712faf87297",
  "kind": "def",
  "lexical_name": "ΓCoconstantSheafAdj",
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
  "slug": "coconstantsheafadj--62912c69426f48ce92271b10",
  "source": {
    "blob": "9776e4a46bd5cc2210e9faa78484e11a98f727c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalSite/Variant37a132e16775351c6078ab010765376c2b5b15edf161ea0f2590a11aaeaf7f50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62912c69426f48ce92271b10cdfd829ce90df6f1c56d1f1f24f66128e6084af4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalSite/Variant37a132e16775351c6078ab010765376c2b5b15edf161ea0f2590a11aaeaf7f50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abb059b99d42da8f264c793e837e37bb2d48353c53dae5fbcbe48712faf87297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ΓCoconstantSheafAdj : Γ J A ⊣ coconstantSheaf.{w} J A :=
  (point.{w} J).skyscraperSheafAdjunction.ofNatIsoLeft (pointSheafFiberIso J A)

/-- On any locally `w`-small local site, the global sections functor to any category with colimits
and products of size `w` is a left adjoint. A variant of this without the universe parameter `w`
is registered as an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalSite/Variant37a132e16775351c6078ab010765376c2b5b15edf161ea0f2590a11aaeaf7f50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalSite/Variant37a132e16775351c6078ab010765376c2b5b15edf161ea0f2590a11aaeaf7f50.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9776e4a46bd5cc2210e9faa78484e11a98f727c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
