# lambda_beta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11867,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c76c4ebc-2512-09d0-d1c4-0e1609919476",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d24b7461-ba5b-b6e0-fa0f-40f2e50249c1",
  "kind": "theorem",
  "lexical_name": "lambda_beta",
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
  "slug": "lambda-beta--154a275a318b2db238bf84fd",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11912,
    "line": 11867,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154a275a318b2db238bf84fd35b41508430838c47d4aac7e797bfe1027fff9b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d24b7461-ba5b-b6e0-fa0f-40f2e50249c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11867–11912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lambda_beta (T : ActiveType Ω C) (act : LambdaAction (hw := hw) Ω C hno T)
    (hr : ∀ hT : FreeLayer P C (Ω.profile T.type) true,
      ∃ x, FreeObservations.behavior _ _ _ _ x = minusLambdaBehavior Ω C hno T hT act)
    (a : FrameKey Ω C T) (p : Option (RawValue (hw := hw) Ω C hno))
    (hp : PayloadFits Ω C hno a.domain p) :
    applyValue Ω C hno T (lambdaValue Ω C hno T act) a p hp = act a p hp := by
  by_cases hT : PlainLayer P C (Ω.profile T.type)
  · simp only [applyValue,lambdaValue,dite_eq_left hT]
    exact plain_beta Ω C hno T hT act a p hp
  · by_cases hF : FreeLayer P C (Ω.profile T.type) false
    · by_cases hA : PlainLayer P C (Ω.profile (a.target hw).type)
      · simp only [applyValue,lambdaValue,dite_eq_right hT,dite_eq_left hF,dite_eq_left hA,Value.asPlus_plus,plusLambda]
        rw [lambdaExit_parameter Ω C hno _ T act a p hp _ (a.plusPayload_parameter hF p hp) hA]
        exact exitValue_tag Ω C hno _ hA _
      · simp only [applyValue,lambdaValue,dite_eq_right hT,dite_eq_left hF,dite_eq_right hA,Value.asPlus_plus]
        apply Subtype.ext
        change RawValue.plus ((plusLambda Ω C hno T hF act).slice
          (a.argument,a.plusParameter hF p hp)) = _
        rw [plusLambda_slice,plusContinue_parameter Ω C hno T hF act a p hp hA]
        exact (Value.asPlus_spec (a.free_target hF hA) (act a p hp)).symm
    · have hM : FreeLayer P C (Ω.profile T.type) true := by
        rcases T.active.classify with h | h | h
        · exact False.elim (hT h)
        · exact False.elim (hF h)
        · exact h
      have hb := packMinus_spec Ω C hno (minusLambdaBehavior Ω C hno T hM act) (hr hM)
      by_cases hA : PlainLayer P C (Ω.profile (a.target hw).type)
      · simp only [applyValue,lambdaValue,dite_eq_right hT,dite_eq_right hF,dite_eq_left hA,Value.asMinus_minus]
        rw [hb]
        change exitValue Ω C hno (a.target hw)
          (lambdaExit Ω C hno (minusPayload Ω C hno) T act (a.argument,a.minusParameter hM p hp)) = _
        rw [lambdaExit_parameter Ω C hno _ T act a p hp _ (a.minusPayload_parameter hM p hp) hA]
        exact exitValue_tag Ω C hno _ hA _
      · simp only [applyValue,lambdaValue,dite_eq_right hT,dite_eq_right hF,dite_eq_right hA,Value.asMinus_minus]
        apply Subtype.ext
        change RawValue.minus (FreeObservations.minusSlice
          (packMinus Ω C hno (minusLambdaBehavior Ω C hno T hM act))
          (a.argument,a.minusParameter hM p hp)) = _
        rw [Value.asMinus_spec (a.free_target hM hA) (act a p hp)]
        apply congrArg RawValue.minus
        apply FreeObservations.behavior_injective (topBase Ω) none
        rw [FreeObservations.behavior_minusSlice,hb,minusLambda_slice,
          minusContinue_parameter Ω C hno T hM act a p hp hA]

namespace PreResult
variable {Ω C hno} {Γ : List (Expr S)} {T : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L11867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
