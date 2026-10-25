# iSup_nadd_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1ba0999930ab981483ab7bd0e3faf244ce0f043",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55eda5860efe6f5e899c6036e94ad713165b1ef5c5d62e724a10c26145dc64e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9d574c5-0f6c-d152-9dc3-d59449b90b54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6a33b15-08ea-c4ab-6e65-0da581e66c29",
  "kind": "theorem",
  "lexical_name": "iSup_nadd_of_monotone",
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
  "slug": "isup-nadd-of-monotone--3aa52de37c965eedb5541e07",
  "source": {
    "blob": "a1ba0999930ab981483ab7bd0e3faf244ce0f043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant55eda5860efe6f5e899c6036e94ad713165b1ef5c5d62e724a10c26145dc64e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aa52de37c965eedb5541e07a380fb2deed55842f759403ab929595d5e07124f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant55eda5860efe6f5e899c6036e94ad713165b1ef5c5d62e724a10c26145dc64e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6a33b15-08ea-c4ab-6e65-0da581e66c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem iSup_nadd_of_monotone {a b} (f : Ordinal.{u} → Ordinal.{u}) (h : Monotone f) :
    ⨆ x : Iio (a ♯ b), f x = max (⨆ a' : Iio a, f (a'.1 ♯ b)) (⨆ b' : Iio b, f (a ♯ b'.1)) := by
  apply (max_le _ _).antisymm'
  · rw [Ordinal.iSup_le_iff]
    rintro ⟨i, hi⟩
    obtain ⟨x, hx, hi⟩ | ⟨x, hx, hi⟩ := lt_nadd_iff.1 hi
    · exact le_max_of_le_left ((h hi).trans <| Ordinal.le_iSup (fun x : Iio a ↦ _) ⟨x, hx⟩)
    · exact le_max_of_le_right ((h hi).trans <| Ordinal.le_iSup (fun x : Iio b ↦ _) ⟨x, hx⟩)
  all_goals
    apply csSup_le_csSup' (bddAbove_of_small _)
    rintro _ ⟨⟨c, hc⟩, rfl⟩
    refine mem_range_self (⟨_, ?_⟩ : Iio _)
    apply_rules [nadd_lt_nadd_left, nadd_lt_nadd_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant55eda5860efe6f5e899c6036e94ad713165b1ef5c5d62e724a10c26145dc64e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant55eda5860efe6f5e899c6036e94ad713165b1ef5c5d62e724a10c26145dc64e1.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1ba0999930ab981483ab7bd0e3faf244ce0f043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
