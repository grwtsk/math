# degree_linear_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee34e65-f172-6475-e4fc-c1aff1fd0d1e",
  "kind": "theorem",
  "lexical_name": "degree_linear_lt",
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
  "slug": "degree-linear-lt--9861ea4925bd9520c7e9b674",
  "source": {
    "blob": "485d4681b1bd57d32bd44255f3cce3c960220f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9861ea4925bd9520c7e9b674edac19c4cc2c2d99dad952fc574f643e6cdba350",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee34e65-f172-6475-e4fc-c1aff1fd0d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_linear_lt : degree (C a * X + C b) < 2 :=
  degree_linear_le.trans_lt <| WithBot.coe_lt_coe.mpr one_lt_two

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485d4681b1bd57d32bd44255f3cce3c960220f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
