# apply_of_ne_none

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e5ee46136ef61ffb400d7a82d4a30ef25d0430c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af56444c41803bbb45fa03bb659e9d007cd08d3561f4fe6bd6ace5b92059de9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a5af2bf-b72b-1ec1-5554-e2bf25cff654",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f970181-4c38-1840-6d15-b19fc8a24b5a",
  "kind": "theorem",
  "lexical_name": "apply_of_ne_none",
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
  "slug": "apply-of-ne-none--adf8aa4ebba18ae47e24f8f6",
  "source": {
    "blob": "2e5ee46136ef61ffb400d7a82d4a30ef25d0430c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variantaf56444c41803bbb45fa03bb659e9d007cd08d3561f4fe6bd6ace5b92059de9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf8aa4ebba18ae47e24f8f6bcb77616199da09aabfddc0846b831030c92d5a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variantaf56444c41803bbb45fa03bb659e9d007cd08d3561f4fe6bd6ace5b92059de9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f970181-4c38-1840-6d15-b19fc8a24b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_of_ne_none {α ι} (l : Line α ι) (x : α) (i : ι) (h : l.idxFun i ≠ none) :
    some (l x i) = l.idxFun i := by rw [l.apply, Option.getD_of_ne_none h]
#align combinatorics.line.apply_of_ne_none Combinatorics.Line.apply_of_ne_none

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variantaf56444c41803bbb45fa03bb659e9d007cd08d3561f4fe6bd6ace5b92059de9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variantaf56444c41803bbb45fa03bb659e9d007cd08d3561f4fe6bd6ace5b92059de9e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e5ee46136ef61ffb400d7a82d4a30ef25d0430c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
