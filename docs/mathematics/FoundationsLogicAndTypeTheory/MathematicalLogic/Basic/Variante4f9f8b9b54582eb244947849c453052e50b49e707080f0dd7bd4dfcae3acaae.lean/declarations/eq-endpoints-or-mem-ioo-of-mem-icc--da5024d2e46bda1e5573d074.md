# eq_endpoints_or_mem_Ioo_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46b6f04ecd575d91055446e912fffdcd243c6c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 598,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4f9f8b9b54582eb244947849c453052e50b49e707080f0dd7bd4dfcae3acaae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67b3189c-b779-8717-9a1b-7685770e5237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:789e3e03-df89-4bfb-0eaf-bd00e16c1abc",
  "kind": "theorem",
  "lexical_name": "eq_endpoints_or_mem_Ioo_of_mem_Icc",
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
  "slug": "eq-endpoints-or-mem-ioo-of-mem-icc--da5024d2e46bda1e5573d074",
  "source": {
    "blob": "f46b6f04ecd575d91055446e912fffdcd243c6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 598,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante4f9f8b9b54582eb244947849c453052e50b49e707080f0dd7bd4dfcae3acaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da5024d2e46bda1e5573d074fe1aede66950ea7ca08d371908c4abe3b52bd1ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante4f9f8b9b54582eb244947849c453052e50b49e707080f0dd7bd4dfcae3acaae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:789e3e03-df89-4bfb-0eaf-bd00e16c1abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_endpoints_or_mem_Ioo_of_mem_Icc {x : α} (hmem : x ∈ Icc a b) :
    x = a ∨ x = b ∨ x ∈ Ioo a b :=
  hmem.1.eq_or_lt'.imp_right fun h => eq_right_or_mem_Ioo_of_mem_Ioc ⟨h, hmem.2⟩

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante4f9f8b9b54582eb244947849c453052e50b49e707080f0dd7bd4dfcae3acaae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante4f9f8b9b54582eb244947849c453052e50b49e707080f0dd7bd4dfcae3acaae.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46b6f04ecd575d91055446e912fffdcd243c6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
