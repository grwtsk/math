# BaseArrowType.ne_kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1789e412-4690-0cc3-2012-d72d4f2b7eff",
  "kind": "theorem",
  "lexical_name": "BaseArrowType.ne_kind",
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
  "slug": "basearrowtype-ne-kind--5e1f30899e65390368a59780",
  "source": {
    "blob": "ba85b83b99a40044ee429d8a1455adf5d6827d60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2405,
    "line": 2397,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e1f30899e65390368a59780d324f6457327cb102602253dce4bcfc41bc02ea6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1789e412-4690-0cc3-2012-d72d4f2b7eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2397–2405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BaseArrowType.ne_kind {type : Expr Bool} (typed : BaseArrowType type) :
    type ≠ .sort true := by
  cases typed with
  | base =>
      intro equality
      exact Bool.false_ne_true (Expr.sort.inj equality)
  | arrow domain codomain => intro equality; cases equality

/-- Grammar types have exactly the kind classifier in any actual source context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean#L2397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba85b83b99a40044ee429d8a1455adf5d6827d60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
