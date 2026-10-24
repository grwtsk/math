# Arrow.fromMiddle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6835a361ee6f057eb13a9a4b3ef8ae4cf7d06393e46933e2895849343595805",
  "kind": "def",
  "lexical_name": "Arrow.fromMiddle",
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
  "slug": "arrow-frommiddle--fb2922c8b595cc094d632ba0",
  "source": {
    "blob": "590dff98c5359301585851e2d2fe7a5a073c01c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 646,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb2922c8b595cc094d632ba0f56333fd238e18ec257160654a1af63ba8474789",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6835a361ee6f057eb13a9a4b3ef8ae4cf7d06393e46933e2895849343595805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Arrow.fromMiddle {X : C} {S : J.Cover X} {T : ∀ I : S.Arrow, J.Cover I.Y}
    (I : (S.bind T).Arrow) : S.Arrow :=
  ⟨_, I.fromMiddleHom, I.from_middle_condition⟩
#align category_theory.grothendieck_topology.cover.arrow.from_middle CategoryTheory.GrothendieckTopology.Cover.Arrow.fromMiddle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590dff98c5359301585851e2d2fe7a5a073c01c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
