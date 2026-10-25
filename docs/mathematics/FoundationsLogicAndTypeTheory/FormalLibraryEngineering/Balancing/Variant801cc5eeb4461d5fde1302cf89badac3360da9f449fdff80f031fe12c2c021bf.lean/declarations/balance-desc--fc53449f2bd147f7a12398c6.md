# balance!_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f665717ed3a8e214cf833d75b0a36c85283e6226",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0203b10-968a-169c-b8d2-b2a18780694a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:465ead24-50fc-a670-ff50-9033ced90e32",
  "kind": "theorem",
  "lexical_name": "balance!_desc",
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
  "slug": "balance-desc--fc53449f2bd147f7a12398c6",
  "source": {
    "blob": "f665717ed3a8e214cf833d75b0a36c85283e6226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 737,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc53449f2bd147f7a12398c603a8f1b8306f9dc18c6a0591f633296e1e462f7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465ead24-50fc-a670-ff50-9033ced90e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balance!_desc {k : α} {v : β k} {l r : Impl α β} (hlb : l.Balanced) (hrb : r.Balanced)
    (hlr : BalanceLErasePrecond l.size r.size ∨ BalanceLErasePrecond r.size l.size) :
    (balance! k v l r).size = l.size + 1 + r.size ∧ (balance! k v l r).Balanced := by
  rw [balance!_eq_balanceₘ hlb hrb hlr, balanceₘ]
  fun_cases balanceₘ k v l r
  · rw [if_pos ‹_›, bin, balanced_inner_iff]
    exact ⟨rfl, hlb, hrb, Or.inl ‹_›, rfl⟩
  · rw [if_neg ‹_›, dif_pos ‹_›]
    simp only [size_rotateL (.left ‹_›), size_bin, size_inner]
    rw [← Balanced.eq ‹_›]
    refine ⟨rfl, ?_⟩
    apply balanced_rotateL <;> assumption
  · rw [if_neg ‹_›, dif_neg ‹_›, dif_pos ‹_›]
    simp only [size_rotateR (.right ‹_›), size_bin, size_inner]
    rw [← Balanced.eq ‹_›]
    refine ⟨rfl, ?_⟩
    apply balanced_rotateR <;> assumption
  · rw [if_neg ‹_›, dif_neg ‹_›, dif_neg ‹_›]
    exact ⟨rfl, ✓⟩

@[Std.Internal.tree_tac]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f665717ed3a8e214cf833d75b0a36c85283e6226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
