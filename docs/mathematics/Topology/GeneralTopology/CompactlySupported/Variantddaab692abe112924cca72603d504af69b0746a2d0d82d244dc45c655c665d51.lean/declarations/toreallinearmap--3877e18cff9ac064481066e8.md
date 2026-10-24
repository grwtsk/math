# toRealLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18eab7ccc1bd084e68fafb5a6b48ae8cb6f44d3e9b662892660fb8a37523ba3c",
  "kind": "def",
  "lexical_name": "toRealLinearMap",
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
  "slug": "toreallinearmap--3877e18cff9ac064481066e8",
  "source": {
    "blob": "b1821a0632188add8f53cadf5a07c52e30d49d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 678,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3877e18cff9ac064481066e859b5c4e09d7f84123962fb297ec3954cf4a87e50",
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

Occurrence: `declaration:18eab7ccc1bd084e68fafb5a6b48ae8cb6f44d3e9b662892660fb8a37523ba3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toRealLinearMap : C_c(α, ℝ≥0) →ₗ[ℝ≥0] C_c(α, ℝ) where
  toFun := toReal
  map_add' f g := by ext x; simp
  map_smul' a f := by ext x; simp [NNReal.smul_def]

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1821a0632188add8f53cadf5a07c52e30d49d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
