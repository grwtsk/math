# mem_closure_iff_sup_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf798efa14b9af576dd65024f481f068a5dfc09f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f22b570-a665-bb6b-e393-7e0058d4a410",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddde19ee-fb76-86fb-6037-10912d54d52d",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff_sup_sdiff",
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
  "slug": "mem-closure-iff-sup-sdiff--4149226157c04f2940f4fc7a",
  "source": {
    "blob": "bf798efa14b9af576dd65024f481f068a5dfc09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 375,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4149226157c04f2940f4fc7a935fd04f614cbdfc28032a3eaf12327a35f99f76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddde19ee-fb76-86fb-6037-10912d54d52d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff_sup_sdiff {a : α} :
    a ∈ closure s ↔ ∃ t : Finset (s × s), a = t.sup fun x ↦ x.1.1 \ x.2.1 := by
  classical
  refine ⟨closure_bot_sup_induction
    (fun x h ↦ ⟨{(⟨x, h⟩, ⟨⊥, bot_mem⟩)}, by simp⟩) ⟨∅, by simp⟩ ?_ ?_, ?_⟩
  · rintro ⟨t, rfl⟩
    exact t.sup_mem _ (subset_closure bot_mem) (fun _ h _ ↦ sup_mem h) _
      fun x hx ↦ sdiff_mem (subset_closure x.1.2) (subset_closure x.2.2)
  · rintro _ - _ - ⟨t₁, rfl⟩ ⟨t₂, rfl⟩
    exact ⟨t₁ ∪ t₂, by rw [Finset.sup_union]⟩
  rintro x - ⟨t, rfl⟩
  refine t.induction ⟨{(⟨⊤, top_mem⟩, ⟨⊥, bot_mem⟩)}, by simp⟩ fun ⟨x, y⟩ t _ ⟨tc, eq⟩ ↦ ?_
  simp_rw [Finset.sup_insert, compl_sup, eq]
  refine tc.induction ⟨∅, by simp⟩ fun ⟨z, w⟩ tc _ ⟨t, eq⟩ ↦ ?_
  simp_rw [Finset.sup_insert, inf_sup_left, eq]
  use {(z, ⟨_, isSublattice.supClosed x.2 w.2⟩), (⟨_, isSublattice.infClosed y.2 z.2⟩, w)} ∪ t
  simp_rw [Finset.sup_union, Finset.sup_insert, Finset.sup_singleton, sdiff_eq,
    compl_sup, inf_left_comm z.1, compl_inf, compl_compl, inf_sup_right, inf_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf798efa14b9af576dd65024f481f068a5dfc09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
