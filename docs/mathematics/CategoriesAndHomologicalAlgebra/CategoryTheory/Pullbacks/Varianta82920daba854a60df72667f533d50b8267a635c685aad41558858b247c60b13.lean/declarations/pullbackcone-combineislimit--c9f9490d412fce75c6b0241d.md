# PullbackCone.combineIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3582372533e4807ad39a0a5c76a8ca6e3c25bbaa99f2bbe30dc2dae7d1731a35",
  "kind": "def",
  "lexical_name": "PullbackCone.combineIsLimit",
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
  "slug": "pullbackcone-combineislimit--c9f9490d412fce75c6b0241d",
  "source": {
    "blob": "55b4d1d27f709530437717b35b9f02c07484b105",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta82920daba854a60df72667f533d50b8267a635c685aad41558858b247c60b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9f9490d412fce75c6b0241dacd7fd9c501e9cbdcffc6c55d6b6b6e04830acfe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta82920daba854a60df72667f533d50b8267a635c685aad41558858b247c60b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3582372533e4807ad39a0a5c76a8ca6e3c25bbaa99f2bbe30dc2dae7d1731a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PullbackCone.combineIsLimit (f : F ⟶ H) (g : G ⟶ H)
    (c : ∀ X, PullbackCone (f.app X) (g.app X)) (hc : ∀ X, IsLimit (c X)) :
    IsLimit (combine f g c hc) :=
  evaluationJointlyReflectsLimits _ fun k ↦ by
    refine IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_ (hc k)
    · exact cospanIsoMk (Iso.refl _) (Iso.refl _) (Iso.refl _)
    · refine Cone.ext (Iso.refl _) ?_
      rintro (_ | _ | _)
      all_goals cat_disch

variable [HasPullbacks C]

/-- Evaluating a pullback amounts to taking the pullback of the evaluations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta82920daba854a60df72667f533d50b8267a635c685aad41558858b247c60b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta82920daba854a60df72667f533d50b8267a635c685aad41558858b247c60b13.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b4d1d27f709530437717b35b9f02c07484b105` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
