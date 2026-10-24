# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:439bbffc293c12f823e38fc1a7f6fd96b02049b4ff20c912a3b96729536a0d5c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--68e4908b4c37b1bf3de554ed",
  "source": {
    "blob": "c5f3ef8854ebb9f7c40255243e0833f27f95cead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68e4908b4c37b1bf3de554edda7eb9540ff06709c68d51319d203fcce5f50489",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:439bbffc293c12f823e38fc1a7f6fd96b02049b4ff20c912a3b96729536a0d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMul R M] [SMul Rᵐᵒᵖ M] [IsCentralScalar R M] : IsCentralScalar R (ULift M) :=
  ⟨fun r m => congr_arg up <| op_smul_eq_smul r m.down⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f3ef8854ebb9f7c40255243e0833f27f95cead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
