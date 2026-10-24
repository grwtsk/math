# naturalityProperty_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e9a63b72c5a3f1d67883130eb00174af8b5107c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0538df91-14a7-1953-c1b3-8af2a0b5c6eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbb729e4-6dd0-c66c-5994-062f1178e81c",
  "kind": "lemma",
  "lexical_name": "naturalityProperty_eq_top",
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
  "slug": "naturalityproperty-eq-top--e91e1680a388cd9e0e19a690",
  "source": {
    "blob": "6e9a63b72c5a3f1d67883130eb00174af8b5107c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91e1680a388cd9e0e19a690f0845a6eb3d285dd61315d6f49e546389d6052e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbb729e4-6dd0-c66c-5994-062f1178e81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma naturalityProperty_eq_top :
    naturalityProperty f₀ f₁ hδ₁ hδ₀ hY = ⊤ := by
  refine SimplexCategory.Truncated.morphismProperty_eq_top _
    (fun n hn i ↦ ?_) (fun n hn i ↦ ?_)
  · obtain _ | _ | n := n
    · fin_cases i
      · ext; apply hδ₀
      · ext; apply hδ₁
    · fin_cases i
      · ext; apply hδ'₀ f₀ f₁ hδ₁ hδ₀ hY
      · ext; apply hδ'₁ f₀ f₁ hδ₁ hδ₀ H hY
      · ext; apply hδ'₂ f₀ f₁ hδ₁ hδ₀ hY
    · lia
  · obtain _ | _ | n := n
    · fin_cases i
      ext; apply hσ
    · fin_cases i
      · ext; apply hσ'₀ f₀ f₁ hδ₁ hδ₀ hσ hY
      · ext; apply hσ'₁ f₀ f₁ hδ₁ hδ₀ hσ hY
    · lia

end liftOfStrictSegal

open liftOfStrictSegal in
/-- Constructor for morphisms `X ⟶ Y` between `2`-truncated simplicial sets from
the data of maps on `0`- and `1`-simplices when `Y` is strict Segal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9a63b72c5a3f1d67883130eb00174af8b5107c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
