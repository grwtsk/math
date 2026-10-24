# Extensions.compareName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab5d7cdb17d7005984c0f77fb77cbcbe6ba5624dc3cd4cbfa8be79c7f4f7d643",
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
  "slug": "extensions-comparename--42d7cde1b1638bc9cf96eb15",
  "source": {
    "blob": "f7cc0c7489dfef07a00a4f3daeb624eb889ee65e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant33ab2e4627f7d55abae15eeac5396532cb116cbb24571d58893bd9809af352f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42d7cde1b1638bc9cf96eb153b3d13fa81f15bbfe0b521fd91e8afef9c5978b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant33ab2e4627f7d55abae15eeac5396532cb116cbb24571d58893bd9809af352f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab5d7cdb17d7005984c0f77fb77cbcbe6ba5624dc3cd4cbfa8be79c7f4f7d643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–55.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant33ab2e4627f7d55abae15eeac5396532cb116cbb24571d58893bd9809af352f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extensions/Variant33ab2e4627f7d55abae15eeac5396532cb116cbb24571d58893bd9809af352f7.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cc0c7489dfef07a00a4f3daeb624eb889ee65e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
