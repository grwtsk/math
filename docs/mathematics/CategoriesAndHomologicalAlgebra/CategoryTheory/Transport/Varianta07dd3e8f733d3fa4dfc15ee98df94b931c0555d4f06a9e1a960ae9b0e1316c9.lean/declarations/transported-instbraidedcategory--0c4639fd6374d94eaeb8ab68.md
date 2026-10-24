# Transported.instBraidedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f8aca2ed73854061dc7fb7c242cafc545048ca4f11f5870633a5a5da334adcd",
  "kind": "instance",
  "lexical_name": "Transported.instBraidedCategory",
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
  "slug": "transported-instbraidedcategory--0c4639fd6374d94eaeb8ab68",
  "source": {
    "blob": "e4ad2a8defb5c85fd7f485a705445cbe9b64f0cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c4639fd6374d94eaeb8ab68bcad6bd105d7c5924e2ea94ecf06c58fef91f66b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f8aca2ed73854061dc7fb7c242cafc545048ca4f11f5870633a5a5da334adcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Transported.instBraidedCategory (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    BraidedCategory (Transported e) :=
  .ofFaithful e.inverse (fun _ _ ↦ e.functor.mapIso (β_ _ _)) fun _ _ ↦ by
    simp +instances [fromInducedCoreMonoidal, Functor.CoreMonoidal.toLaxMonoidal]

local notation "e'" e => equivalenceTransported e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ad2a8defb5c85fd7f485a705445cbe9b64f0cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
