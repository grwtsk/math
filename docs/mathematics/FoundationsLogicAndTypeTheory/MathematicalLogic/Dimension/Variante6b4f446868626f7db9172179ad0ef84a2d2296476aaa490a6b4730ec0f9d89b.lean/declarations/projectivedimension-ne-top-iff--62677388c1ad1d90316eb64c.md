# projectiveDimension_ne_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d2f7780-de93-7700-d073-2c309fe6911d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc74e4c4-dde1-c080-2a32-732ff136aa52",
  "kind": "lemma",
  "lexical_name": "projectiveDimension_ne_top_iff",
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
  "slug": "projectivedimension-ne-top-iff--62677388c1ad1d90316eb64c",
  "source": {
    "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62677388c1ad1d90316eb64cc7588bbd0322ed37dc0d1a2b2b5e65c90a9a5325",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc74e4c4-dde1-c080-2a32-732ff136aa52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveDimension_ne_top_iff (X : C) :
    projectiveDimension X ≠ ⊤ ↔ ∃ n, HasProjectiveDimensionLE X n := by
  generalize hd : projectiveDimension X = d
  induction d with
  | bot =>
    simp only [ne_eq, bot_ne_top, not_false_eq_true, true_iff]
    exact ⟨0, by simp [← projectiveDimension_le_iff, hd]⟩
  | coe d =>
    induction d with
    | top =>
      by_contra!
      simp only [WithBot.coe_top, ne_eq, not_true_eq_false, false_and, true_and, false_or] at this
      obtain ⟨n, hn⟩ := this
      rw [← projectiveDimension_le_iff, hd, WithBot.coe_top, top_le_iff] at hn
      exact ENat.natCast_ne_top _ ((WithBot.coe_eq_coe).1 hn)
    | coe d =>
      simp only [ne_eq, WithBot.coe_eq_top, ENat.natCast_ne_top, not_false_eq_true, true_iff]
      exact ⟨d, by simpa only [← projectiveDimension_le_iff] using! hd.le⟩

/-- A projective object has projective dimension at most zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a966a00b58c27e2b919d2888467767d4898d4ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
