# πSummand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c05614ab841e26650216e8b81f93dbca437d2499876ac6760fa7e106c32230ed",
  "kind": "def",
  "lexical_name": "πSummand",
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
  "slug": "summand--c6a99d609c6e65e38de6da0c",
  "source": {
    "blob": "f2afe0272612932444de300e420c165223d829ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a99d609c6e65e38de6da0c6fcd9c286ca66570766b31c10e7e636977711245",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c05614ab841e26650216e8b81f93dbca437d2499876ac6760fa7e106c32230ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def πSummand [HasZeroMorphisms C] {Δ : SimplexCategoryᵒᵖ} (A : IndexSet Δ) :
    X.obj Δ ⟶ s.N A.1.unop.len :=
  s.desc Δ (fun B => by
    by_cases h : B = A
    · exact eqToHom (by subst h; rfl)
    · exact 0)

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2afe0272612932444de300e420c165223d829ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
