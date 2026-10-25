# clear_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88b596bf-d913-29c7-2f91-b1a2070876e6",
  "kind": "theorem",
  "lexical_name": "clear_ok",
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
  "slug": "clear-ok--38a88c04a497278bd8eb38ae",
  "source": {
    "blob": "c99705ed18c92e83219c09ab347bf368539512b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 646,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a88c04a497278bd8eb38aea5ba102e92270a373f17f8b1bc5d48b44d74d066",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b596bf-d913-29c7-2f91-b1a2070876e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clear_ok {p k q s L₁ o L₂} {S : K' → List Γ'} (e : splitAtPred p (S k) = (L₁, o, L₂)) :
    Reaches₁ (TM2.step tr) ⟨some (Λ'.clear p k q), s, S⟩ ⟨some q, o, update S k L₂⟩ := by
  induction L₁ generalizing S s with
  | nil =>
    refine TransGen.head' rfl ?_
    rw [tr]; simp only [pop', TM2.step, Option.mem_def, TM2.stepAux, Option.elim]
    revert e; rcases S k with - | ⟨a, Sk⟩ <;> intro e
    · cases e
      rfl
    simp only [splitAtPred, List.head?, List.tail_cons] at e ⊢
    revert e; cases p a <;> intro e <;>
      simp only [Bool.cond_false, Bool.cond_true, Prod.mk.injEq, true_and, false_and,
        reduceCtorEq] at e ⊢
    rcases e with ⟨e₁, e₂⟩
    rw [e₁, e₂]
  | cons a L₁ IH =>
    refine TransGen.head rfl ?_
    rw [tr]; simp only [pop', TM2.step, Option.mem_def, TM2.stepAux, Option.elim]
    rcases e₁ : S k with - | ⟨a', Sk⟩ <;> rw [e₁, splitAtPred] at e
    · cases e
    cases e₂ : p a' <;> simp only [e₂, cond] at e
    swap
    · cases e
    rcases e₃ : splitAtPred p Sk with ⟨_, _, _⟩
    rw [e₃] at e
    cases e
    simp only [List.head?_cons, e₂, List.tail_cons, Bool.cond_false]
    convert! @IH _ (update S k Sk) _ using 2 <;> simp [e₃]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99705ed18c92e83219c09ab347bf368539512b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
