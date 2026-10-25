# closure_bot_sup_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f74bf3e-a457-3ee4-69b6-88181ce275cb",
  "kind": "lemma",
  "lexical_name": "closure_bot_sup_induction",
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
  "slug": "closure-bot-sup-induction--d68b040c0b0d0ca1a4640bcb",
  "source": {
    "blob": "45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 376,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68b040c0b0d0ca1a4640bcbaa955ffee7744126243837e8ec0a898be8498301",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f74bf3e-a457-3ee4-69b6-88181ce275cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closure_bot_sup_induction {p : ∀ g ∈ closure s, Prop} (mem : ∀ x hx, p x (subset_closure hx))
    (bot : p ⊥ bot_mem)
    (sup : ∀ x hx y hy, p x hx → p y hy → p (x ⊔ y) (supClosed _ hx hy))
    (compl : ∀ x hx, p x hx → p xᶜ (compl_mem hx)) {x} (hx : x ∈ closure s) : p x hx :=
  have inf ⦃x hx y hy⦄ (hx' : p x hx) (hy' : p y hy) : p (x ⊓ y) (infClosed _ hx hy) := by
    simpa using compl _ _ <| sup _ _ _ _ (compl _ _ hx') (compl _ _ hy')
  let L : BooleanSubalgebra α :=
    { carrier := { x | ∃ hx, p x hx }
      supClosed' := fun _a ⟨_, ha⟩ _b ⟨_, hb⟩ ↦ ⟨_, sup _ _ _ _ ha hb⟩
      infClosed' := fun _a ⟨_, ha⟩ _b ⟨_, hb⟩ ↦ ⟨_, inf ha hb⟩
      bot_mem' := ⟨_, bot⟩
      compl_mem' := fun ⟨_, hb⟩ ↦ ⟨_, compl _ _ hb⟩ }
  closure_le (L := L).mpr (fun y hy ↦ ⟨subset_closure hy, mem y hy⟩) hx |>.elim fun _ ↦ id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
