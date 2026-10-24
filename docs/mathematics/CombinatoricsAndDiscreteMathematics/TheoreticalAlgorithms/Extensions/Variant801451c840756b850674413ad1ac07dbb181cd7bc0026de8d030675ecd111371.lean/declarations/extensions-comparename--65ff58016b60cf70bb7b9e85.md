# Extensions.compareName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2b1e6b8899c80916d9345f693db794741c49b3ff38ffe5c20243744e7b96a12",
  "kind": "def",
  "lexical_name": "Extensions.compareName",
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
  "slug": "extensions-comparename--65ff58016b60cf70bb7b9e85",
  "source": {
    "blob": "83421399b20e94733ce732bc3903fa0756c589b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant801451c840756b850674413ad1ac07dbb181cd7bc0026de8d030675ecd111371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65ff58016b60cf70bb7b9e856a7ab0edf75625854f0a9aad88dc780580f12871",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant801451c840756b850674413ad1ac07dbb181cd7bc0026de8d030675ecd111371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2b1e6b8899c80916d9345f693db794741c49b3ff38ffe5c20243744e7b96a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Extensions.compareName : Name → Name → Ordering
  | .anonymous, .anonymous => .eq
  | .anonymous, _ => .lt
  | _, .anonymous => .gt
  | .str p₁ s₁, .str p₂ s₂ =>
    match Extensions.compareName p₁ p₂ with
    | .eq => compareOfLessAndEq s₁ s₂
    | ord => ord
  | .str _ _, .num _ _ => .lt
  | .num _ _, .str _ _ => .gt
  | .num p₁ n₁, .num p₂ n₂ =>
    match Extensions.compareName p₁ p₂ with
    | .eq => compare n₁ n₂
    | ord => ord

/--
A dynamically typed map for optional metadata that can be attached to HTTP requests and responses.
Extensions allow storing arbitrary typed data keyed by type name, useful for metadata such as socket
information or custom processing data.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant801451c840756b850674413ad1ac07dbb181cd7bc0026de8d030675ecd111371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant801451c840756b850674413ad1ac07dbb181cd7bc0026de8d030675ecd111371.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83421399b20e94733ce732bc3903fa0756c589b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
