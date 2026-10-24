# HeatSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f95b1a20d21e0e0a18d20085fc71e32898f7fd32f06b2df0f905a672708e5ed",
  "kind": "structure",
  "lexical_name": "HeatSemigroup",
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
  "slug": "heatsemigroup--c24638a952ba1d587c2b8220",
  "source": {
    "blob": "a4d91ae12f5868e12d43596c5b0d7fad85560619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 19,
    "path": "GRWTSK/Algebra/GroupTheory/HeatSemigroup/Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c24638a952ba1d587c2b8220baf7ec9431d0c0854c44edc83a2a8be4a9cc2bea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/HeatSemigroup/Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f95b1a20d21e0e0a18d20085fc71e32898f7fd32f06b2df0f905a672708e5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeatSemigroup (α : Type _) where
  heat : NNReal → α → α
  heat_zero : ∀ x, heat 0 x = x
  heat_add : ∀ t u x, heat (t + u) x = heat t (heat u x)

end Transform
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/HeatSemigroup/Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/HeatSemigroup/Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d91ae12f5868e12d43596c5b0d7fad85560619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
