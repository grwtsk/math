# clear_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45e2e1c1402ad68f5565d835dd0262a54dd39694",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 615,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e951a2e7-f1fc-c2d7-10d5-59a968205012",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3668bc7-d8fb-ec7a-ad2b-4ec29cca5233",
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
  "slug": "clear-ok--c0dbd7736b377420dccc7529",
  "source": {
    "blob": "45e2e1c1402ad68f5565d835dd0262a54dd39694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 615,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0dbd7736b377420dccc7529041a52593d699766f363dcbe1106bce74b61fb87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3668bc7-d8fb-ec7a-ad2b-4ec29cca5233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clear_ok {p k q s L₁ o L₂} {S : K' → List Γ'} (e : splitAtPred p (S k) = (L₁, o, L₂)) :
    Reaches₁ (TM2.step tr) ⟨some (Λ'.clear p k q), s, S⟩ ⟨some q, o, update S k L₂⟩ := by
  induction' L₁ with a L₁ IH generalizing S s
  · refine TransGen.head' rfl ?_
    rw [tr]; simp only [pop', TM2.step, Option.mem_def, TM2.stepAux, Option.elim]
    revert e; rcases S k with - | ⟨a, Sk⟩ <;> intro e
    · cases e
      rfl
    simp only [splitAtPred, Option.elim, List.head?, List.tail_cons] at e ⊢
    revert e; cases p a <;> intro e <;>
      simp only [cond_false, cond_true, Prod.mk.injEq, true_and, false_and, reduceCtorEq] at e ⊢
    rcases e with ⟨e₁, e₂⟩
    rw [e₁, e₂]
  · refine TransGen.head rfl ?_
    rw [tr]; simp only [pop', TM2.step, Option.mem_def, TM2.stepAux, Option.elim]
    rcases e₁ : S k with - | ⟨a', Sk⟩ <;> rw [e₁, splitAtPred] at e
    · cases e
    cases e₂ : p a' <;> simp only [e₂, cond] at e
    swap
    · cases e
    rcases e₃ : splitAtPred p Sk with ⟨_, _, _⟩
    rw [e₃] at e
    cases e
    simp only [List.head?_cons, e₂, List.tail_cons, cond_false]
    convert @IH _ (update S k Sk) _ using 2 <;> simp [e₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e2e1c1402ad68f5565d835dd0262a54dd39694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
