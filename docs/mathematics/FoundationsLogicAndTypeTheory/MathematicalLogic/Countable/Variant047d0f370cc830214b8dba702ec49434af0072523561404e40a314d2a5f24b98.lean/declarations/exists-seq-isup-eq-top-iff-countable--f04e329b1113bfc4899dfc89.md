# exists_seq_iSup_eq_top_iff_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5ffd2035308f61e38f10aad4df99b2405ec519a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e62b145-9781-10e6-a616-a002250d62a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:affee02d-8ab2-91a4-d066-9e297038cbdd",
  "kind": "theorem",
  "lexical_name": "exists_seq_iSup_eq_top_iff_countable",
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
  "slug": "exists-seq-isup-eq-top-iff-countable--f04e329b1113bfc4899dfc89",
  "source": {
    "blob": "f5ffd2035308f61e38f10aad4df99b2405ec519a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f04e329b1113bfc4899dfc891d381d7c40851f85930125d28bf609bc24c88585",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:affee02d-8ab2-91a4-d066-9e297038cbdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_iSup_eq_top_iff_countable [CompleteLattice α] {p : α → Prop} (h : ∃ x, p x) :
    (∃ s : ℕ → α, (∀ n, p (s n)) ∧ ⨆ n, s n = ⊤) ↔
      ∃ S : Set α, S.Countable ∧ (∀ s ∈ S, p s) ∧ sSup S = ⊤ := by
  constructor
  · rintro ⟨s, hps, hs⟩
    refine ⟨range s, countable_range s, forall_mem_range.2 hps, ?_⟩
    rwa [sSup_range]
  · rintro ⟨S, hSc, hps, hS⟩
    rcases eq_empty_or_nonempty S with (rfl | hne)
    · rw [sSup_empty] at hS
      have := subsingleton_of_bot_eq_top hS
      rcases h with ⟨x, hx⟩
      exact ⟨fun _ => x, fun _ => hx, Subsingleton.elim _ _⟩
    · rcases (Set.countable_iff_exists_surjective hne).1 hSc with ⟨s, hs⟩
      refine ⟨fun n => s n, fun n => hps _ (s n).coe_prop, ?_⟩
      rwa [hs.iSup_comp, ← sSup_eq_iSup']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ffd2035308f61e38f10aad4df99b2405ec519a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
