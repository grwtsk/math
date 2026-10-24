# MonotoneOn.csSup_eq_of_subset_of_forall_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c3540bd4678624712daf753bf6ab72283172d1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 806,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51852db5-d6f2-d3a9-5c1d-403a4142d0ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba8c7176-dcf8-91bb-c7b5-2323f9fd5870",
  "kind": "lemma",
  "lexical_name": "MonotoneOn.csSup_eq_of_subset_of_forall_exists_le",
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
  "slug": "monotoneon-cssup-eq-of-subset-of-forall-exists-le--4376b2336f813d7f2d4c0e6a",
  "source": {
    "blob": "0c3540bd4678624712daf753bf6ab72283172d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 806,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4376b2336f813d7f2d4c0e6ad04daebd2a251586474175f63da0598c9c4a5e4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba8c7176-dcf8-91bb-c7b5-2323f9fd5870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonotoneOn.csSup_eq_of_subset_of_forall_exists_le
    [Preorder α] [ConditionallyCompleteLattice β] {f : α → β}
    {s t : Set α} (ht : BddAbove (f '' t)) (hf : MonotoneOn f t)
    (hst : s ⊆ t) (h : ∀ y ∈ t, ∃ x ∈ s, y ≤ x) :
    sSup (f '' s) = sSup (f '' t) :=
  MonotoneOn.csInf_eq_of_subset_of_forall_exists_le (α := αᵒᵈ) (β := βᵒᵈ) ht hf.dual hst h

/-!
### Supremum/infimum of `Set.image2`

A collection of lemmas showing what happens to the suprema/infima of `s` and `t` when mapped under
a binary function whose partial evaluations are lower/upper adjoints of Galois connections.
-/

section

variable [ConditionallyCompleteLattice α] [ConditionallyCompleteLattice β]
  [ConditionallyCompleteLattice γ] {s : Set α} {t : Set β}

variable {l u : α → β → γ} {l₁ u₁ : β → γ → α} {l₂ u₂ : α → γ → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c3540bd4678624712daf753bf6ab72283172d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
