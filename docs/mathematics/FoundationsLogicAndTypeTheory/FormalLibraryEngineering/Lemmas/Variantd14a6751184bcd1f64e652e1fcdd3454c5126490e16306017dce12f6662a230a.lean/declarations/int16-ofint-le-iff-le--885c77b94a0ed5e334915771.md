# Int16.ofInt_le_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a76608c8bd1ba88ce1de70aa16b43d67932f802",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7c3fed6-6fcb-2031-0352-8e97a2b10733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:720c6104-ccd5-c529-97d5-78d74f14f94e",
  "kind": "theorem",
  "lexical_name": "Int16.ofInt_le_iff_le",
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
  "slug": "int16-ofint-le-iff-le--885c77b94a0ed5e334915771",
  "source": {
    "blob": "0a76608c8bd1ba88ce1de70aa16b43d67932f802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2441,
    "line": 2439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885c77b94a0ed5e33491577122214f3b2c1ebdf8552d5e8ca93c7527f7dc19f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:720c6104-ccd5-c529-97d5-78d74f14f94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2439–2441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int16.ofInt_le_iff_le {a b : Int} (ha₁ : minValue.toInt ≤ a) (ha₂ : a ≤ maxValue.toInt)
    (hb₁ : minValue.toInt ≤ b) (hb₂ : b ≤ maxValue.toInt) : Int16.ofInt a ≤ Int16.ofInt b ↔ a ≤ b := by
  rw [← ofIntLE_eq_ofInt ha₁ ha₂, ← ofIntLE_eq_ofInt hb₁ hb₂, ofIntLE_le_iff_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean#L2439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a76608c8bd1ba88ce1de70aa16b43d67932f802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
