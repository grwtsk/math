# fintypeCatAsCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d73c99e8645154bd2d506e66f80e64be96e0c0d728e5cb565307f47c39017632",
  "kind": "def",
  "lexical_name": "fintypeCatAsCofanIsColimit",
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
  "slug": "fintypecatascofaniscolimit--6c43f59070dc29f0dd82f14a",
  "source": {
    "blob": "2b305bc999d85879dbfbfd081e09e181056e58ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 470,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c43f59070dc29f0dd82f14a2d659c466d4044a7c3db009b65718ac9b78c43dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d73c99e8645154bd2d506e66f80e64be96e0c0d728e5cb565307f47c39017632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fintypeCatAsCofanIsColimit (X : LightProfinite) [Finite X] :
    IsColimit (fintypeCatAsCofan X) := by
  refine mkCofanColimit _ (fun t ↦ TopCat.ofHom ⟨fun x ↦ t.inj x PUnit.unit, ?_⟩) ?_
    (fun _ _ h ↦ by ext x; exact CategoryTheory.congr_fun (h x) _)
  · apply continuous_of_discreteTopology (α := X)
  · aesop

variable [PreservesFiniteProducts F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b305bc999d85879dbfbfd081e09e181056e58ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
