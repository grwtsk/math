# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0e63c420bb7d811eb3931a9eb5b2895118c2f04b3067ede14aef0664fd810a5",
  "kind": "abbrev",
  "lexical_name": "trans",
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
  "slug": "trans--76b836bdccac992a661b32df",
  "source": {
    "blob": "1046608a44462dfda1e5889e6f8d38f669fa07c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76b836bdccac992a661b32dfbc7025c9e31605e4b53fddd5e3e4b4368a44e926",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0e63c420bb7d811eb3931a9eb5b2895118c2f04b3067ede14aef0664fd810a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev trans [IsCofibrant X] {f₀ f₁ f₂ : X ⟶ Y}
    (h : P.LeftHomotopy f₀ f₁) {P' : Cylinder X} [P'.IsGood]
    (h' : P'.LeftHomotopy f₁ f₂) [HasPushout P.i₁ P'.i₀] :
    (P.trans P').LeftHomotopy f₀ f₂ :=
  Precylinder.LeftHomotopy.trans h h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1046608a44462dfda1e5889e6f8d38f669fa07c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
