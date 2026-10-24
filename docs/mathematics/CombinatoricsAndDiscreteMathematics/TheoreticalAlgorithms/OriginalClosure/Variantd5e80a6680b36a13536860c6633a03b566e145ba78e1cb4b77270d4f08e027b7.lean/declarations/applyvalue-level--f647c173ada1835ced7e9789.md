# applyValue_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9094,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b92a17b9-edfb-4637-9c5e-2f2c1466400b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1926e89e-8f94-29b9-754b-2cb33cc36192",
  "kind": "theorem",
  "lexical_name": "applyValue_level",
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
  "slug": "applyvalue-level--f647c173ada1835ced7e9789",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 9146,
    "line": 9094,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f647c173ada1835ced7e9789d1a7d41575d7e9a8dd0b65dd97fdc897ac599877",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1926e89e-8f94-29b9-754b-2cb33cc36192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9094–9146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyValue_level {T : ActiveType Ω C} {k j r : Nat}
    (v v' : Value (hw := hw) Ω C hno T.type) (hv : RawValue.Bounded Ω C hno j v.val)
    (hvv : RawValue.LevelEq Ω C hno (max k r) v.val v'.val) (a : FrameKey Ω C T)
    (p p' : Option (RawValue (hw := hw) Ω C hno))
    (hp : PayloadFits Ω C hno a.domain p) (hp' : PayloadFits Ω C hno a.domain p')
    (hb : Parameter.Bounded Ω C hno r p) (hpp : Parameter.LevelEq Ω C hno j p p') :
    RawValue.LevelEq Ω C hno k (applyValue Ω C hno T v a p hp).val
      (applyValue Ω C hno T v' a p' hp').val := by
  unfold applyValue
  by_cases hT : PlainLayer P C (Ω.profile T.type)
  · rw [dite_eq_left hT,dite_eq_left hT]
    have hvv' : v = v' := Subtype.ext (RawValue.level_eq_of_plain hT v.property hvv)
    have hpp' : p = p' := Parameter.level_eq_of_not_plus
      (fun hf => hf.1 (a.plain_domain hw hT hf.active)) hp hpp
    subst v'
    subst p'
    exact RawValue.level_refl k _
  · rw [dite_eq_right hT,dite_eq_right hT]
    by_cases hF : FreeLayer P C (Ω.profile T.type) false
    · rw [dite_eq_left hF,dite_eq_left hF]
      have hpp' : p = p' := Parameter.level_eq_of_not_plus
        (fun hf => Bool.noConfusion (a.free_domain_sign hw hF hf)) hp hpp
      subst p'
      have hh := Value.level_asPlus hF hvv
      have ha := (a.plusParameter_bound hF p hp hb).mono (le_max_right k r)
      split
      · have he := hh.exiting (as := ([],(a.argument,a.plusParameter hF p hp)))
          ⟨fun x hx => False.elim (List.not_mem_nil hx),ha⟩
        dsimp only
        rw [he]
        exact RawValue.level_refl k _
      · exact hh.slice (le_max_left k r) _ ha
    · rw [dite_eq_right hF,dite_eq_right hF]
      have hM : FreeLayer P C (Ω.profile T.type) true := by
        rcases T.active.classify with hh | hh | hh
        · exact False.elim (hT hh)
        · exact False.elim (hF hh)
        · exact hh
      have hh := Value.level_asMinus hM hvv
      have hs := (Value.bounded_asMinus hM hv).mono (Nat.le_succ j)
      have ha := a.minusParameter_level hM p p' hp hp' hpp
      split
      · dsimp only
        rw [← hh]
        have he := FreeObservations.minusExit_eq_of_restrict (topBase Ω) none hs ha
        rw [he]
        exact RawValue.level_refl k _
      · change FreeObservations.minusSlice _ _ = FreeObservations.minusSlice _ _
        rw [← hh]
        exact FreeObservations.minusSlice_eq_of_restrict (topBase Ω) none hs ha

namespace Environment
variable {Ω C hno} {Γ : List (Expr S)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L9094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
