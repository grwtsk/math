# moduleEndSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20c8c37dd76e56eeb29e222e20c87444acd9ee1c8dc3f85cc5503ad00d538dd6",
  "kind": "def",
  "lexical_name": "moduleEndSelf",
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
  "slug": "moduleendself--ecf437bc22b46e03fcb872c4",
  "source": {
    "blob": "b693ec7d6a84e608e2cc5fd10e4dbec008444035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 174,
    "path": "GRWTSK/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecf437bc22b46e03fcb872c498827eee975192042deefc0426dcc41c7838d7e3",
  "verification": {
    "reference": "docs/verification/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20c8c37dd76e56eeb29e222e20c87444acd9ee1c8dc3f85cc5503ad00d538dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def moduleEndSelf : Aᵐᵒᵖ ≃ₐ[R] Module.End A A where
  __ := RingEquiv.moduleEndSelf A
  commutes' _ := by ext; simp [Algebra.algebraMap_eq_smul_one]

/-- The canonical algebra isomorphism from `A` to `Module.End Aᵐᵒᵖ A` induced by the left
multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Opposite/Variantaf441d6f64c807afa66b6814791c6c41a4e068a0717820abbafc5f92d677dc04.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b693ec7d6a84e608e2cc5fd10e4dbec008444035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
