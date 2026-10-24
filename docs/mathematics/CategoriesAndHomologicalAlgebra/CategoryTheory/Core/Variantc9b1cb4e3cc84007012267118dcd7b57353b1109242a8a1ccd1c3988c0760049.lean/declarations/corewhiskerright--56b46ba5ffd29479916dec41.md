# coreWhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ca5b3cc-6c7b-7845-1dc0-802bdb5f788a",
  "kind": "lemma",
  "lexical_name": "coreWhiskerRight",
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
  "slug": "corewhiskerright--56b46ba5ffd29479916dec41",
  "source": {
    "blob": "3699407de5039b0be2af525c55006dae47af18a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b46ba5ffd29479916dec41c8f521a4f2e54c3db8eb706fa5d85f49747851cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ca5b3cc-6c7b-7845-1dc0-802bdb5f788a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coreWhiskerRight {E : Type u₃} [Category.{v₃} E] {F G : C ⥤ D} (η : F ≅ G) (H : D ⥤ E) :
    (isoWhiskerRight η H ).core =
    F.coreComp H ≪≫ isoWhiskerRight η.core H.core ≪≫ (G.coreComp H).symm := by
  aesop_cat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3699407de5039b0be2af525c55006dae47af18a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
