# subtypeVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31a5d7e4026c4fda9e160d3674c206424890b45e0ce6af61b5718a39892a0a0d",
  "kind": "def",
  "lexical_name": "subtypeVal",
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
  "slug": "subtypeval--66c9e12c46502a93bbb24fae",
  "source": {
    "blob": "edda09fc1a901788a8345b21c7afb9ea809d770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 515,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c9e12c46502a93bbb24fae893a1b86cd4c9646383138da7bc98f328810e78e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31a5d7e4026c4fda9e160d3674c206424890b45e0ce6af61b5718a39892a0a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeVal : ∀ {n} {α : TypeVec.{u} n} (p : α ⟹ «repeat» n Prop), Subtype_ p ⟹ α
  | succ n, _, _, Fin2.fs i => @subtypeVal n _ _ i
  | succ _, _, _, Fin2.fz => Subtype.val

/-- arrow that rearranges the type of `Subtype_` to turn a subtype of vector into
a vector of subtypes -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edda09fc1a901788a8345b21c7afb9ea809d770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
