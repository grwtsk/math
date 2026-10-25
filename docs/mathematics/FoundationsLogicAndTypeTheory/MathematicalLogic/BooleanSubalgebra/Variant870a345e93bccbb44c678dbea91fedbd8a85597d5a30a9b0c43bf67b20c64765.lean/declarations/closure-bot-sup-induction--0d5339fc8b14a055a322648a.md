# closure_bot_sup_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f45a0552-d2c8-4543-9fb7-d4c3dc942ead",
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
  "slug": "closure-bot-sup-induction--0d5339fc8b14a055a322648a",
  "source": {
    "blob": "2df4ec8c54ae7e704c08e13291b8e45f4d9ece71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d5339fc8b14a055a322648ad543314a31c9a80b085171a54630deb3a5795af6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f45a0552-d2c8-4543-9fb7-d4c3dc942ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–382.

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

section sdiff_sup

variable (isSublattice : IsSublattice s) (bot_mem : ⊥ ∈ s) (top_mem : ⊤ ∈ s)
include isSublattice bot_mem top_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df4ec8c54ae7e704c08e13291b8e45f4d9ece71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
