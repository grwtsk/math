# recursiveDirectionalCumulant_congr_of_agreeBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cba78f9f-b1cd-a33c-4136-96ed125cc0dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2e73257-d4d1-3f88-f6d8-9fcb4bf47527",
  "kind": "theorem",
  "lexical_name": "recursiveDirectionalCumulant_congr_of_agreeBelow",
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
  "slug": "recursivedirectionalcumulant-congr-of-agreebelow--4ef9529e150cc5a2ff02f039",
  "source": {
    "blob": "ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef9529e150cc5a2ff02f039d927f85f3ad2e5c9c42fca4724548e3a2eafe45d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2e73257-d4d1-3f88-f6d8-9fcb4bf47527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveDirectionalCumulant_congr_of_agreeBelow
    (n : ℕ) (hn : 0 < n)
    (moment : (Fin n → E) → R)
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E) :
    recursiveDirectionalCumulant n hn moment κ₁ directions =
      recursiveDirectionalCumulant n hn moment κ₂ directions := by
  unfold recursiveDirectionalCumulant
  rw [directionalProperContribution_congr_of_agreeBelow
    n hn h directions]

/-- The abstract moment-cumulant relation for a direction family after the
one-block value has been recursively isolated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
