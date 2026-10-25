# isSimpleOrder_blockMem_iff_isPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:927b1db8-7ea3-6d63-0d13-2ca5cbd1fca5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a001a8f3-9507-a4b4-473b-f178317bab8f",
  "kind": "theorem",
  "lexical_name": "isSimpleOrder_blockMem_iff_isPreprimitive",
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
  "slug": "issimpleorder-blockmem-iff-ispreprimitive--4256f7f276528508ade77c44",
  "source": {
    "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4256f7f276528508ade77c44d9e7d2155ac0d14734a4836037b9a112773ad2ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a001a8f3-9507-a4b4-473b-f178317bab8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleOrder_blockMem_iff_isPreprimitive [IsPretransitive G X] [Nontrivial X] (a : X) :
    IsSimpleOrder (BlockMem G a) ↔ IsPreprimitive G X := by
  constructor
  · intro h; let h_bot_or_top := h.eq_bot_or_eq_top
    apply IsPreprimitive.of_isTrivialBlock_base a
    intro B haB hB
    rcases h_bot_or_top ⟨B, haB, hB⟩ with hB' | hB' <;>
      simp only [← Subtype.coe_inj, Subtype.coe_mk] at hB'
    · left; rw [hB']; exact Set.subsingleton_singleton
    · right; rw [hB']; rfl
  · intro hGX'; apply IsSimpleOrder.mk
    rintro ⟨B, haB, hB⟩
    simp only [← Subtype.coe_inj, Subtype.coe_mk]
    cases hGX'.isTrivialBlock_of_isBlock hB with
    | inl h =>
      simp [BlockMem.coe_bot, h.eq_singleton_of_mem haB]
    | inr h =>
      simp [BlockMem.coe_top, h]

/-- A pretransitive action is preprimitive
iff the stabilizer of any point is a maximal subgroup (Wielandt, th. 7.5) -/
@[to_additive
  "A pretransitive action is preprimitive
  iff the stabilizer of any point is a maximal subgroup (Wielandt, th. 7.5)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46eb6912bd9bb128c88d5d71b0e5779a9558a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
