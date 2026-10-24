# coequalizerCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5d1abeacfaaa6a93c625909d1bd826820129cb249d333a94014fb70be711cac",
  "kind": "def",
  "lexical_name": "coequalizerCocone",
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
  "slug": "coequalizercocone--de83f258c129b8f6ecfeb4aa",
  "source": {
    "blob": "c9b162c0b2a47b9719f084434a2eb327e825dffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de83f258c129b8f6ecfeb4aa86c3e93f1cdb461213fd707d9aeab6be0ad8edcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5d1abeacfaaa6a93c625909d1bd826820129cb249d333a94014fb70be711cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coequalizerCocone (F : WalkingParallelPair ⥤ C) : Cocone F :=
  Cocone.ofCofork
    (Cofork.ofπ (pushoutInl F) (by
        conv_rhs => rw [pushoutInl_eq_pushout_inr]
        convert (whisker_eq Limits.coprod.inr pushout.condition
          : (_ : F.obj _ ⟶ constructCoequalizer _) = _) using 1 <;> simp))
#align category_theory.limits.has_coequalizers_of_has_pushouts_and_binary_coproducts.coequalizer_cocone CategoryTheory.Limits.HasCoequalizersOfHasPushoutsAndBinaryCoproducts.coequalizerCocone

/-- Show the equalizing cocone is a colimit -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9b162c0b2a47b9719f084434a2eb327e825dffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
