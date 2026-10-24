# ContinuousMap.liftCompactlySupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:866c77130a827fed975b67bf5af8cbc6befa252f4b758b1af5c24c984d34b29e",
  "kind": "def",
  "lexical_name": "ContinuousMap.liftCompactlySupported",
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
  "slug": "continuousmap-liftcompactlysupported--3c9efc7a6e3455b9f2852cfb",
  "source": {
    "blob": "b1821a0632188add8f53cadf5a07c52e30d49d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c9efc7a6e3455b9f2852cfbb602debb0804f0bda6dd60b841970a992e92e1f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:866c77130a827fed975b67bf5af8cbc6befa252f4b758b1af5c24c984d34b29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMap.liftCompactlySupported [CompactSpace α] : C(α, β) ≃ C_c(α, β) where
  toFun f :=
    { toFun := f
      hasCompactSupport' := HasCompactSupport.of_compactSpace f }
  invFun f := f
  left_inv _ := rfl
  right_inv _ := rfl

variable {γ : Type*} [TopologicalSpace γ] [Zero γ]

/-- Composition of a continuous function `f` with compact support with another continuous function
`g` sending `0` to `0` from the left yields another continuous function `g ∘ f` with compact
support.

If `g` doesn't send `0` to `0`, `f.compLeft g` defaults to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1821a0632188add8f53cadf5a07c52e30d49d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
