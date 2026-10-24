# identityCausalStateEquivEffectiveState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eeb97af141495a347af75b5f40744368bdac726cd2a5e71bc9d23debcb4bd14",
  "kind": "def",
  "lexical_name": "identityCausalStateEquivEffectiveState",
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
  "slug": "identitycausalstateequiveffectivestate--931bd0a9b98130bb9823d996",
  "source": {
    "blob": "ef5dab6a79d1ae2d4fb99069c010c17deb50831c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:931bd0a9b98130bb9823d99619b66af931c5840d229f3e052a9eb0e2f4cdbf92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eeb97af141495a347af75b5f40744368bdac726cd2a5e71bc9d23debcb4bd14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def identityCausalStateEquivEffectiveState
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    (quantizerIdentitySystem Q).CausalState ≃ Q.EffectiveState :=
  let quotientEquiv :
      (quantizerIdentitySystem Q).CausalState ≃ Quotient Q.setoid :=
    {
      toFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).1 h)
      invFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).2 h)
      left_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
      right_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
    }
  quotientEquiv.trans Q.quotientEquivEffective

end CausalObservation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5dab6a79d1ae2d4fb99069c010c17deb50831c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
