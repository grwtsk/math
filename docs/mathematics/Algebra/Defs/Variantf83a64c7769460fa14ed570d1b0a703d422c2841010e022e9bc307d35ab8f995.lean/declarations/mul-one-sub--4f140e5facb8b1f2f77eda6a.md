# mul_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "465f793c1031d9d45b54455380f7d5aeb8d70515",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52619855-ea1b-3225-e3fd-d997c9eb1836",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52986a77-3e99-ba38-9bb0-55964ff7f137",
  "kind": "theorem",
  "lexical_name": "mul_one_sub",
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
  "slug": "mul-one-sub--4f140e5facb8b1f2f77eda6a",
  "source": {
    "blob": "465f793c1031d9d45b54455380f7d5aeb8d70515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 416,
    "path": "GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f140e5facb8b1f2f77eda6a547345f60ca9b55b4a54f58accba9855d5b4e5d2",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52986a77-3e99-ba38-9bb0-55964ff7f137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_one_sub (a b : α) : a * (1 - b) = a - a * b := by rw [mul_sub, mul_one]
#align mul_one_sub mul_one_sub

end NonAssocRing

section Ring

variable [Ring α] {a b c d e : α}

-- A (unital, associative) ring is a not-necessarily-unital ring
-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465f793c1031d9d45b54455380f7d5aeb8d70515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
