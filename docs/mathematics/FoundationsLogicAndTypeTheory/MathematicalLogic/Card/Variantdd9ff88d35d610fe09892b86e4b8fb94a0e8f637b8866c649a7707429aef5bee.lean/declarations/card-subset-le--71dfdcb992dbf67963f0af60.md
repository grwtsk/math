# card_subset_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72bd3d9d-0a6c-502b-04bc-200a951b6675",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46f4e0e0-7586-ef90-724c-3bcce14f7508",
  "kind": "theorem",
  "lexical_name": "card_subset_le",
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
  "slug": "card-subset-le--71dfdcb992dbf67963f0af60",
  "source": {
    "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71dfdcb992dbf67963f0af60d82dba098747227684c0d90fc977d8ee2f919300",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46f4e0e0-7586-ef90-724c-3bcce14f7508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_subset_le : ∀ {as bs : List α}, as ⊆ bs → card as ≤ card bs
  | [], bs, _ => by simp
  | (a :: as), bs, hsub => by
    cases Decidable.em (a ∈ as) with
    | inl h' =>
      have hsub' : as ⊆ bs := fun _ xmem ↦ hsub (mem_cons_of_mem a xmem)
      simp [h', card_subset_le hsub']
    | inr h' =>
      have : a ∈ bs := hsub (Mem.head ..)
      rw [card_cons_of_not_mem h', card_remove_of_mem this]
      apply Nat.add_le_add_right
      apply card_subset_le
      intro x xmem
      rw [mem_remove_iff]
      exact ⟨hsub (mem_cons_of_mem _ xmem), fun h ↦ h' (h ▸ xmem)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd16ff4fd9099651c4d940d4387f16b51b86395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
