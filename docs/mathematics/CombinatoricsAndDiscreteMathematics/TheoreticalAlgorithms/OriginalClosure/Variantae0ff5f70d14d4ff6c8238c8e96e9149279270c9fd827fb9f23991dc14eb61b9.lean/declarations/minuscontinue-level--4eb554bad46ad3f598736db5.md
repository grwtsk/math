# minusContinue_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cff97a8-fcde-b8c2-d8a8-935ec153aaba",
  "kind": "theorem",
  "lexical_name": "minusContinue_level",
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
  "slug": "minuscontinue-level--4eb554bad46ad3f598736db5",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8878,
    "line": 8856,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb554bad46ad3f598736db5d53fc8fed3c483f58fe3cef13d46ce2f8e458663",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cff97a8-fcde-b8c2-d8a8-935ec153aaba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8856–8878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minusContinue_level {T : ActiveType Ω C}
    (hT : FreeLayer P C (Ω.profile T.type) true) {k l : Nat}
    {act act' : LambdaAction (hw := hw) Ω C hno T} (hr : ActionRelated Ω C hno T k l act act')
    {a a' : MinusFrame (hw := hw) Ω C hno}
    (ha : FreeObservations.mapFrame (FreeObservations.restrict _ _ _ _ l) a =
      FreeObservations.mapFrame (FreeObservations.restrict _ _ _ _ l) a') :
    minusContinue Ω C hno T hT act a = minusContinue Ω C hno T hT act' a' := by
  have hh := minusFrame_restrict Ω C hno ha
  have hg : Gate Ω C hno T a.1 (minusPayload Ω C hno a.2) false ↔
      Gate Ω C hno T a'.1 (minusPayload Ω C hno a'.2) false := by
    rw [hh.1]
    exact Gate.level_iff hh.2
  unfold minusContinue
  by_cases h : Gate Ω C hno T a.1 (minusPayload Ω C hno a.2) false
  · have h' := hg.mp h
    rw [dite_eq_left h,dite_eq_left h']
    have he := hr.gates hh.1 h h' (minusPayload_bounded Ω C hno k a)
      (minusPayload_bounded Ω C hno k a') hh.2
    rw [Value.asMinus_spec (h.frame.free_target hT h.not_plain) (act _ _ _),
      Value.asMinus_spec (h'.frame.free_target hT h'.not_plain) (act' _ _ _)] at he
    exact he
  · rw [dite_eq_right h,dite_eq_right (mt hg.mpr h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L8856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
