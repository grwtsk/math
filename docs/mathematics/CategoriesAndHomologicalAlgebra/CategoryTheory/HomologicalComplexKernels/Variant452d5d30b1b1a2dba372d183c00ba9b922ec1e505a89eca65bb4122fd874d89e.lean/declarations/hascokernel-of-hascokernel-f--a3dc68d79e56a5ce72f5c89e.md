# hasCokernel_of_hasCokernel_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebeb4b10-17ce-2fed-6dd8-cf0f10bb846c",
  "kind": "lemma",
  "lexical_name": "hasCokernel_of_hasCokernel_f",
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
  "slug": "hascokernel-of-hascokernel-f--a3dc68d79e56a5ce72f5c89e",
  "source": {
    "blob": "79d9e353378a463872cc46d3d3b6935b88ef9a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variant452d5d30b1b1a2dba372d183c00ba9b922ec1e505a89eca65bb4122fd874d89e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3dc68d79e56a5ce72f5c89e6ef0c0d5bba5f6e98c2b4f7114601c8609840314",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variant452d5d30b1b1a2dba372d183c00ba9b922ec1e505a89eca65bb4122fd874d89e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebeb4b10-17ce-2fed-6dd8-cf0f10bb846c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCokernel_of_hasCokernel_f [∀ i, HasCokernel (f.f i)] : HasCokernel f :=
  have (i : ι) : HasColimit (parallelPair f 0 ⋙ eval C c i) :=
    hasColimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  ⟨_, isColimitCoconeOfHasColimitEval _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variant452d5d30b1b1a2dba372d183c00ba9b922ec1e505a89eca65bb4122fd874d89e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexKernels/Variant452d5d30b1b1a2dba372d183c00ba9b922ec1e505a89eca65bb4122fd874d89e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d9e353378a463872cc46d3d3b6935b88ef9a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
