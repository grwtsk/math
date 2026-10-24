# div_four_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "641d23aba3e3706ac5edd1fc490bf601621fc246",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47af8306-f6de-f9e1-3aae-c8209c2a8368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:243ac4bc-fb7f-dafb-6211-1a857c0fb30c",
  "kind": "lemma",
  "lexical_name": "div_four_lt",
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
  "slug": "div-four-lt--dfe0ab697c96e0df15401ce4",
  "source": {
    "blob": "641d23aba3e3706ac5edd1fc490bf601621fc246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 142,
    "path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe0ab697c96e0df15401ce471e3adc77ed817f0798c07fdb6ef9f113d906935",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:243ac4bc-fb7f-dafb-6211-1a857c0fb30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma div_four_lt : {n : ℕ} → (h0 : n ≠ 0) → (h1 : n ≠ 1) → n / 4 + 1 < n
  | 0 | 1 | 2 | 3 => by decide
  | n + 4 => by omega

/-- A list of Dihedral groups whose product will have commuting probability `1 / n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641d23aba3e3706ac5edd1fc490bf601621fc246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
