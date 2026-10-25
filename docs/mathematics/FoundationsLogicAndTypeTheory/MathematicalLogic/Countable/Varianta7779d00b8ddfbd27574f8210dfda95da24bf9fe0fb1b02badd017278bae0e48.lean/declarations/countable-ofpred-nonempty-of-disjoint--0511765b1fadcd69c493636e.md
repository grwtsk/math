# countable_ofPred_nonempty_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9546d169-66e3-90a1-d8b4-a2523094b1f1",
  "kind": "theorem",
  "lexical_name": "countable_ofPred_nonempty_of_disjoint",
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
  "slug": "countable-ofpred-nonempty-of-disjoint--0511765b1fadcd69c493636e",
  "source": {
    "blob": "ae95fb5814474c8ed143675770c35d7268df94df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Varianta7779d00b8ddfbd27574f8210dfda95da24bf9fe0fb1b02badd017278bae0e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0511765b1fadcd69c493636e4de012190ba18d7785b89bc16473f92c4447802e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Varianta7779d00b8ddfbd27574f8210dfda95da24bf9fe0fb1b02badd017278bae0e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9546d169-66e3-90a1-d8b4-a2523094b1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_ofPred_nonempty_of_disjoint {f : β → Set α}
    (hf : Pairwise (Disjoint on f)) {s : Set α} (h'f : ∀ t, f t ⊆ s) (hs : s.Countable) :
    Set.Countable {t | (f t).Nonempty} := by
  rw [← Set.countable_coe_iff] at hs ⊢
  have : ∀ t : {t // (f t).Nonempty}, ∃ x : s, x.1 ∈ f t := by
    rintro ⟨t, ⟨x, hx⟩⟩
    exact ⟨⟨x, (h'f t hx)⟩, hx⟩
  choose F hF using this
  have A : Injective F := by
    rintro ⟨t, ht⟩ ⟨t', ht'⟩ htt'
    have A : (f t ∩ f t').Nonempty := by
      refine ⟨F ⟨t, ht⟩, hF ⟨t, _⟩, ?_⟩
      rw [htt']
      exact hF ⟨t', _⟩
    simp only [Subtype.mk.injEq]
    by_contra H
    exact not_disjoint_iff_nonempty_inter.2 A (hf H)
  exact Injective.countable A

@[deprecated (since := "2026-07-09")]
alias countable_setOf_nonempty_of_disjoint := countable_ofPred_nonempty_of_disjoint

end Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Varianta7779d00b8ddfbd27574f8210dfda95da24bf9fe0fb1b02badd017278bae0e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Varianta7779d00b8ddfbd27574f8210dfda95da24bf9fe0fb1b02badd017278bae0e48.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae95fb5814474c8ed143675770c35d7268df94df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
