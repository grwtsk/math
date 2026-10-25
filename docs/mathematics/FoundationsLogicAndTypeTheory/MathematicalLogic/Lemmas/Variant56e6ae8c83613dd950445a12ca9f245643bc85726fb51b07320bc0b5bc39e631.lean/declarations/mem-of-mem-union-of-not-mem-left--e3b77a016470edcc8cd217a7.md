# mem_of_mem_union_of_not_mem_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc493d5554bb5e2a363e76c9f2fc05e930449d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1728,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c98f03ec-f833-c05f-f674-bf116c57b28c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ff34d30-f9fb-f7f7-7359-badc8b1cdf07",
  "kind": "theorem",
  "lexical_name": "mem_of_mem_union_of_not_mem_left",
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
  "slug": "mem-of-mem-union-of-not-mem-left--e3b77a016470edcc8cd217a7",
  "source": {
    "blob": "bc493d5554bb5e2a363e76c9f2fc05e930449d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1733,
    "line": 1728,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3b77a016470edcc8cd217a7057a4e71bfd20941376558f372adf2514e3a4704",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ff34d30-f9fb-f7f7-7359-badc8b1cdf07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1728–1733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_mem_union_of_not_mem_left [TransCmp cmp]
    (h₁ : t₁.WF) (h₂ : t₂.WF) {k : α} :
    k ∈ t₁ ∪ t₂ → ¬k ∈ t₁ → k ∈ t₂ :=
  DTreeMap.Raw.mem_of_mem_union_of_not_mem_left h₁ h₂

/- Equiv -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant56e6ae8c83613dd950445a12ca9f245643bc85726fb51b07320bc0b5bc39e631.lean#L1728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc493d5554bb5e2a363e76c9f2fc05e930449d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
