# preservesTerminal_of_isSheaf_for_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6bf5920-b523-4a71-73bc-38481e28f47d",
  "kind": "lemma",
  "lexical_name": "preservesTerminal_of_isSheaf_for_empty",
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
  "slug": "preservesterminal-of-issheaf-for-empty--c9e9ec3f4b80366b7d449e63",
  "source": {
    "blob": "aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e9ec3f4b80366b7d449e638fda086b28632a412403ce47b3fd2790a327a071",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6bf5920-b523-4a71-73bc-38481e28f47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesTerminal_of_isSheaf_for_empty (hI : IsInitial I) :
    PreservesLimit (Functor.empty.{0} Cᵒᵖ) F :=
  have := hI.hasInitial
  (preservesTerminal_of_iso F
    ((F.mapIso (terminalIsoIsTerminal (terminalOpOfInitial initialIsInitial)) ≪≫
    (F.mapIso (initialIsoIsInitial hI).symm.op) ≪≫
    (terminalIsoIsTerminal (isTerminal_of_isSheafFor_empty_presieve I F hF)).symm)))

end Terminal

section Product

variable (hI : IsInitial I)

-- This is the data of a particular disjoint coproduct in `C`.
variable {α : Type} {X : α → C} (c : Cofan X) (hc : IsColimit c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
