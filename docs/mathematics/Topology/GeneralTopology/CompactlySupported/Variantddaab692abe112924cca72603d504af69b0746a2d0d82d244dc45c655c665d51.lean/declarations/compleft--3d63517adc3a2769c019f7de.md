# compLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45966c12b37acf45e1c33c3938168c6bafa562a0f64fe2657d52a7515e265780",
  "kind": "def",
  "lexical_name": "compLeft",
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
  "slug": "compleft--3d63517adc3a2769c019f7de",
  "source": {
    "blob": "b1821a0632188add8f53cadf5a07c52e30d49d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d63517adc3a2769c019f7de2d16264e892b7809fd2d86f0cf32331ef18e0d19",
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

Occurrence: `declaration:45966c12b37acf45e1c33c3938168c6bafa562a0f64fe2657d52a7515e265780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compLeft (g : C(β, γ)) (f : C_c(α, β)) : C_c(α, γ) where
  toContinuousMap := by classical exact if g 0 = 0 then g.comp f else 0
  hasCompactSupport' := by
    split_ifs with hg
    · exact f.hasCompactSupport'.comp_left hg
    · exact .zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1821a0632188add8f53cadf5a07c52e30d49d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
