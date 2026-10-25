# causalStateEquivBehaviorImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab19add262eb1a315ec155c986b2979986b9785eb0b734e2ba6e62ed2d5a79ea",
  "kind": "def",
  "lexical_name": "causalStateEquivBehaviorImage",
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
  "slug": "causalstateequivbehaviorimage--b0ee1eff7e6374b59b3d9cc4",
  "source": {
    "blob": "2481bbdda61c6b7b5deac2783a0c1d1dffeffe6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant8cc1ad83113e89b6/RealizedBehaviorImageAndExactExports.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0ee1eff7e6374b59b3d9cc41a1df5c90d845928daa1599654e4b05b63f84d0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant8cc1ad83113e89b6/RealizedBehaviorImageAndExactExports.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab19add262eb1a315ec155c986b2979986b9785eb0b734e2ba6e62ed2d5a79ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def causalStateEquivBehaviorImage
    (M : System Input State Resolution) :
    M.CausalState ≃ M.BehaviorImage where
  toFun := Quotient.lift
    (fun x => ⟨M.behavior x, ⟨x, rfl⟩⟩)
    (by
      intro x y h
      apply Subtype.ext
      exact (M.causalEquivalent_iff_behavior_eq x y).mp h)
  invFun b := M.toCausal (Classical.choose b.property)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    apply (M.toCausal_eq_iff _ _).mpr
    apply (M.causalEquivalent_iff_behavior_eq _ _).mpr
    exact Classical.choose_spec
      ((⟨M.behavior x, ⟨x, rfl⟩⟩ : M.BehaviorImage).property)
  right_inv := by
    intro b
    apply Subtype.ext
    exact Classical.choose_spec b.property

end System

end ObservableRecursion

/-!
The public `CausalObservation` namespace re-exports the same declarations for
the stable, topic-oriented API.  These are namespace aliases, not a second
quotient construction; method notation such as `M.CausalState` continues to
refer to `ObservableRecursion.System.CausalState`.
-/
namespace CausalObservation

export ObservableRecursion.System
  (CausalEquivalent causalEquivalent_refl causalEquivalent_symm
    causalEquivalent_trans causalSetoid CausalState toCausal toCausal_eq_iff
    toCausal_surjective
    causalEquivalent_step causalStep causalStep_toCausal runCausal
    runCausal_toCausal causalEquivalent_observe causalObserve
    causalObserve_toCausal causalObserve_runCausal Behavior behavior
    causalEquivalent_iff_behavior_eq BehaviorImage
    causalStateEquivBehaviorImage)

end CausalObservation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant8cc1ad83113e89b6/RealizedBehaviorImageAndExactExports.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant8cc1ad83113e89b6/RealizedBehaviorImageAndExactExports.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2481bbdda61c6b7b5deac2783a0c1d1dffeffe6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
