# partialExtrinsicFix_eq_apply_of_acc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1abad8f-7c61-c603-9da3-59e075b901b6",
  "kind": "theorem",
  "lexical_name": "partialExtrinsicFix_eq_apply_of_acc",
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
  "slug": "partialextrinsicfix-eq-apply-of-acc--d22083007345ae36d365724c",
  "source": {
    "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d22083007345ae36d365724ce3459c76f030b2cf5814fe0f6b612c0227725d21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1abad8f-7c61-c603-9da3-59e075b901b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem partialExtrinsicFix_eq_apply_of_acc [∀ a, Nonempty (C a)] {R : α → α → Prop}
    {F : ∀ a, (∀ a', R a' a → C a') → C a} {a : α} (h : Acc R a) :
    partialExtrinsicFix R F a = F a (fun a' _ => partialExtrinsicFix R F a') := by
  simp only [partialExtrinsicFix]
  rw [extrinsicFix_eq_apply]
  congr; ext a' hR
  let f (x : { x : α // x = a' ∨ TransGen R x a' }) : { x : α // x = a ∨ TransGen R x a } :=
    ⟨x.val, by
      cases x.property
      · rename_i h
        rw [h]
        exact Or.inr (.single hR)
      · rename_i h
        apply Or.inr
        refine TransGen.trans h ?_
        exact .single hR⟩
  have := extrinsicFix_invImage (C := (C ·.val)) (R := (R ·.1 ·.1)) (f := f)
    (F := fun a r => F a.1 fun a' hR => r ⟨a', Or.inr (by rcases a.2 with ha | ha; exact .single (ha ▸ hR); exact .trans (.single hR) ‹_›)⟩ hR)
    (F' := fun a r => F a.1 fun a' hR => r ⟨a', by rcases a.2 with ha | ha; exact .inr (.single (ha ▸ hR)); exact .inr (.trans (.single hR) ‹_›)⟩ hR)
  unfold InvImage at this
  rw [this]
  · simp +zetaDelta
  · constructor
    intro x
    refine InvImage.accessible _ ?_
    cases x.2 <;> rename_i hx
    · rwa [hx]
    · exact h.inv_of_transGen hx
  · constructor
    intro x
    refine InvImage.accessible _ ?_
    cases x.2 <;> rename_i hx
    · rwa [hx]
    · exact h.inv_of_transGen hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
