# ofMul_vadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eaab13d-dacf-da4c-f6e4-ca8f34c95610",
  "kind": "theorem",
  "lexical_name": "ofMul_vadd",
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
  "slug": "ofmul-vadd--523c69cb67adf2dfa7b99758",
  "source": {
    "blob": "90b6bdb127a3daef34af9220186b980e813ac7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1216,
    "line": 1212,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant048eb36e5b555301704c0ff9946513bdc85c402a32d7a1cb72e7625ad3aa84e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:523c69cb67adf2dfa7b997587588c15138cf7bf7e3d4d9cafe81bc05cb8f704a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant048eb36e5b555301704c0ff9946513bdc85c402a32d7a1cb72e7625ad3aa84e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eaab13d-dacf-da4c-f6e4-ca8f34c95610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1212–1216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMul_vadd [SMul α β] (a : α) (b : β) : ofMul a +ᵥ b = a • b :=
  rfl
#align of_mul_vadd ofMul_vadd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant048eb36e5b555301704c0ff9946513bdc85c402a32d7a1cb72e7625ad3aa84e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant048eb36e5b555301704c0ff9946513bdc85c402a32d7a1cb72e7625ad3aa84e1.lean#L1212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90b6bdb127a3daef34af9220186b980e813ac7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
