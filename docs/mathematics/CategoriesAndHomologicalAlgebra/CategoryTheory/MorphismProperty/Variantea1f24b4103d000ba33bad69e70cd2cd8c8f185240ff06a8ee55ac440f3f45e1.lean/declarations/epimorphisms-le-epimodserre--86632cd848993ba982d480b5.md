# epimorphisms_le_epiModSerre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:739cca38-4d9a-e675-3cc7-17b7d094ca7d",
  "kind": "lemma",
  "lexical_name": "epimorphisms_le_epiModSerre",
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
  "slug": "epimorphisms-le-epimodserre--86632cd848993ba982d480b5",
  "source": {
    "blob": "e1c7dda25624468dc040fde38e27bc433f7f1ffe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86632cd848993ba982d480b5a532b4cec2c51ed8b9fbe0236eb8047f810d8b15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:739cca38-4d9a-e675-3cc7-17b7d094ca7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epimorphisms_le_epiModSerre : epimorphisms C ≤ P.epiModSerre :=
  fun _ _ f (_ : Epi f) ↦ P.prop_of_isZero (isZero_cokernel_of_epi f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c7dda25624468dc040fde38e27bc433f7f1ffe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
