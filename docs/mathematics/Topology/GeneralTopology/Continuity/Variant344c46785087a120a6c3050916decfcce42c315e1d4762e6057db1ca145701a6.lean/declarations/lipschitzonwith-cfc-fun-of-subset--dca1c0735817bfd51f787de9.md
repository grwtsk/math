# lipschitzOnWith_cfcₙ_fun_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e60cd51-7704-9793-5e8a-1f886a5e00a6",
  "kind": "lemma",
  "lexical_name": "lipschitzOnWith_cfcₙ_fun_of_subset",
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
  "slug": "lipschitzonwith-cfc-fun-of-subset--dca1c0735817bfd51f787de9",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 726,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dca1c0735817bfd51f787de919d78415ce9c0a8653e5f906f8011d683dcf7c37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e60cd51-7704-9793-5e8a-1f886a5e00a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lipschitzOnWith_cfcₙ_fun_of_subset (a : A) {s : Set R} (hs : quasispectrum R a ⊆ s) :
    LipschitzOnWith 1 (fun f ↦ cfcₙ (toFun {s} f) a)
      {f | ContinuousOn (toFun {s} f) (s) ∧ f 0 = 0} := by
  have h₂ := lipschitzWith_one_ofFun_toFun' (𝔖 := {quasispectrum R a}) (𝔗 := {s}) (β := R)
    (by simpa)
  have h₃ := h₂.lipschitzOnWith (s := {f | ContinuousOn (toFun {s} f) (s) ∧ f 0 = 0})
  simpa using! lipschitzOnWith_cfcₙ_fun R a |>.comp h₃ (fun f ↦ .imp_left fun hf ↦ hf.mono hs)

end Isometric

end Left

section Right
section RCLike

variable {X 𝕜 A : Type*} {p : A → Prop} [RCLike 𝕜] [NonUnitalNormedRing A] [StarRing A]
    [NormedSpace 𝕜 A] [IsScalarTower 𝕜 A A] [SMulCommClass 𝕜 A A] [ContinuousStar A]
    [NonUnitalIsometricContinuousFunctionalCalculus 𝕜 A p]

open scoped NonUnitalContinuousFunctionalCalculus ContinuousMapZero in
/-- `cfcₙHomSuperset` is continuous in the variable `a : A` when `s : Set 𝕜` is compact and `a`
varies over elements whose spectrum is contained in `s`, all of which satisfy the predicate `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
