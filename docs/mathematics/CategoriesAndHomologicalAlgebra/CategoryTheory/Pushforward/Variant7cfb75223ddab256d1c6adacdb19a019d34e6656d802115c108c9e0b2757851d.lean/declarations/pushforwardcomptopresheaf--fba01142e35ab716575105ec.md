# pushforwardCompToPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa49759f64aab539606a145f4d0078ec38e74eedfff96313ecd01b41b2e82ba8",
  "kind": "def",
  "lexical_name": "pushforwardCompToPresheaf",
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
  "slug": "pushforwardcomptopresheaf--fba01142e35ab716575105ec",
  "source": {
    "blob": "532b45ac59acc8e80caad811eff1ba1a741a3b8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant7cfb75223ddab256d1c6adacdb19a019d34e6656d802115c108c9e0b2757851d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fba01142e35ab716575105ec9d449c6c3f2c3d1aaf9893bfc65e72af939dfa53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant7cfb75223ddab256d1c6adacdb19a019d34e6656d802115c108c9e0b2757851d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa49759f64aab539606a145f4d0078ec38e74eedfff96313ecd01b41b2e82ba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushforwardCompToPresheaf :
    pushforward.{v} φ ⋙ toPresheaf _ ≅ toPresheaf _ ⋙ (whiskeringLeft _ _ _).obj F.op :=
  Iso.refl _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant7cfb75223ddab256d1c6adacdb19a019d34e6656d802115c108c9e0b2757851d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant7cfb75223ddab256d1c6adacdb19a019d34e6656d802115c108c9e0b2757851d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `532b45ac59acc8e80caad811eff1ba1a741a3b8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
