# signVariations_eraseLead_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1dcffcc72e321c9d49dd4a56bc9e6e5f5cc2b57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3a02a0b-89c9-dc25-8c45-47784b83a3e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48645a19-ec3a-851b-7b76-9221f2aff489",
  "kind": "theorem",
  "lexical_name": "signVariations_eraseLead_le",
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
  "slug": "signvariations-eraselead-le--8eb4cae6d4ca1188c998727b",
  "source": {
    "blob": "a1dcffcc72e321c9d49dd4a56bc9e6e5f5cc2b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb4cae6d4ca1188c998727b7acddfc1e843945492bfa8b86534da8bec77652b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48645a19-ec3a-851b-7b76-9221f2aff489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signVariations_eraseLead_le : signVariations P.eraseLead ≤ signVariations P := by
  by_cases hpz : P = 0
  · simp [hpz]
  · grind [signVariations_eq_eraseLead_add_ite]

/-- We can only lose at most one sign changes if we drop the leading coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dcffcc72e321c9d49dd4a56bc9e6e5f5cc2b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
