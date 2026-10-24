# SlashInvariantForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b6e25070354b7bd9e8189b1541477c2672b32764d51c3877c8e5a59cd966079",
  "kind": "structure",
  "lexical_name": "SlashInvariantForm",
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
  "slug": "slashinvariantform--699fa20b0e7d33e07dd6b374",
  "source": {
    "blob": "cf452daf4807a573dd236f107bd06f86b8561f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:699fa20b0e7d33e07dd6b3741adea98b4e2b731772e3cda14f3d047fd1c7c533",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b6e25070354b7bd9e8189b1541477c2672b32764d51c3877c8e5a59cd966079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SlashInvariantForm where
  toFun : ℍ → ℂ
  slash_action_eq' : ∀ γ ∈ Γ, toFun ∣[k] γ = toFun

/-- `SlashInvariantFormClass F Γ k` asserts `F` is a type of bundled functions that are invariant
under the `SlashAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf452daf4807a573dd236f107bd06f86b8561f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
