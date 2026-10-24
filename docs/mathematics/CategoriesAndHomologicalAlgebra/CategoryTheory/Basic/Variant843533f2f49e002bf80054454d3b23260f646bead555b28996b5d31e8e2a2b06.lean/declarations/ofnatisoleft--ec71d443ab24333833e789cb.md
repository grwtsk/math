# ofNatIsoLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99d093a830750ed42d9cd471d8001ac05d4bf664fac9095998cc2cbecda5e441",
  "kind": "def",
  "lexical_name": "ofNatIsoLeft",
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
  "slug": "ofnatisoleft--ec71d443ab24333833e789cb",
  "source": {
    "blob": "4496a2211f2fc987a6b1eb283dbc90021e98f8ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec71d443ab24333833e789cb079fb3ca29c62da5aa77da5666247c699a1bd08b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99d093a830750ed42d9cd471d8001ac05d4bf664fac9095998cc2cbecda5e441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNatIsoLeft {F G : C ⥤ D} {H : D ⥤ C} (adj : F ⊣ H) (iso : F ≅ G) : G ⊣ H :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y => (equivHomsetLeftOfNatIso iso.symm).trans (adj.homEquiv X Y) }
#align category_theory.adjunction.of_nat_iso_left CategoryTheory.Adjunction.ofNatIsoLeft

/-- Transport an adjunction along a natural isomorphism on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4496a2211f2fc987a6b1eb283dbc90021e98f8ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
