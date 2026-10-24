# equivalence₁UnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:824988fd222d570ee382aa9c041392439510a51ec8aa8add1cf42fbf45c77294",
  "kind": "def",
  "lexical_name": "equivalence₁UnitIso",
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
  "slug": "equivalence-unitiso--2862dc3993f3994f5ac1285a",
  "source": {
    "blob": "59cef69095b372f10206483cfd5b0923fa64aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2862dc3993f3994f5ac1285a31cdca7432bdbeebdb69ab1fb9860506214ed83d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:824988fd222d570ee382aa9c041392439510a51ec8aa8add1cf42fbf45c77294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalence₁UnitIso : 𝟭 A ≅ F ⋙ e'.inverse ⋙ eA.inverse :=
  calc
    𝟭 A ≅ eA.functor ⋙ eA.inverse := eA.unitIso
    _ ≅ eA.functor ⋙ 𝟭 A' ⋙ eA.inverse := Iso.refl _
    _ ≅ eA.functor ⋙ (e'.functor ⋙ e'.inverse) ⋙ eA.inverse :=
      isoWhiskerLeft _ (isoWhiskerRight e'.unitIso _)
    _ ≅ (eA.functor ⋙ e'.functor) ⋙ e'.inverse ⋙ eA.inverse := Iso.refl _
    _ ≅ F ⋙ e'.inverse ⋙ eA.inverse := isoWhiskerRight hF _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59cef69095b372f10206483cfd5b0923fa64aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
