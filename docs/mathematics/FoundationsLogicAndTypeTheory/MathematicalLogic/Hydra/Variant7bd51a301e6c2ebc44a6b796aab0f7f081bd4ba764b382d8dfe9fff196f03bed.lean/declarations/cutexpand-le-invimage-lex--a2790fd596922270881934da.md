# cutExpand_le_invImage_lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce3d2a4339fd55b11be144e9906c908259b2ca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:695e0ca0-8751-1600-9617-b02519a87105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:209023ce-7cb0-1278-25cf-a52e5e90f6d3",
  "kind": "theorem",
  "lexical_name": "cutExpand_le_invImage_lex",
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
  "slug": "cutexpand-le-invimage-lex--a2790fd596922270881934da",
  "source": {
    "blob": "7ce3d2a4339fd55b11be144e9906c908259b2ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2790fd596922270881934da2a32fbc24cc66edb71cc9c08c3231b68effd394e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:209023ce-7cb0-1278-25cf-a52e5e90f6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutExpand_le_invImage_lex [DecidableEq α] [Std.Irrefl r] :
    CutExpand r ≤ InvImage (Finsupp.Lex (rᶜ ⊓ (· ≠ ·)) (· < ·)) toFinsupp := by
  rintro s t ⟨u, a, hr, he⟩
  replace hr := fun a' ↦ mt (hr a')
  refine ⟨a, fun b h ↦ ?_, ?_⟩ <;> simp_rw [toFinsupp_apply]
  · apply_fun count b at he
    simpa only [count_add, count_singleton, ite_eq_right h.2, add_zero, count_eq_zero.2 (hr b h.1)]
      using he
  · apply_fun count a at he
    simp only [count_add, count_singleton_self, count_eq_zero.2 (hr _ (irrefl_of r a)),
      add_zero] at he
    exact he ▸ Nat.lt_succ_self _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce3d2a4339fd55b11be144e9906c908259b2ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
