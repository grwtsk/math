# NormedOrderedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a2b2ebf35a2dad890f4edc4aeffadf61901c38fe6439a3748fc4871b0e9be69",
  "kind": "structure",
  "lexical_name": "NormedOrderedGroup",
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
  "slug": "normedorderedgroup--b506d39355f8c10eb3858758",
  "source": {
    "blob": "0490c6f9fbdbffb626a9e2b8622ffbc1c9e0251e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b506d39355f8c10eb3858758cfc909affef427ea43c0edfe740439e0c4c84745",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a2b2ebf35a2dad890f4edc4aeffadf61901c38fe6439a3748fc4871b0e9be69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NormedOrderedGroup (α : Type*) extends OrderedCommGroup α, Norm α, MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x / y‖ := by aesop

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A `NormedLinearOrderedAddGroup` is an additive group that is both a `NormedAddCommGroup`
and a `LinearOrderedAddCommGroup`. This class is necessary to avoid diamonds caused by both
classes carrying their own group structure. -/
@[deprecated "Use `[NormedAddCommGroup α] [LinearOrder α] [IsOrderedAddMonoid α]` instead."
  (since := "2025-04-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0490c6f9fbdbffb626a9e2b8622ffbc1c9e0251e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
