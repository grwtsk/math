# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14a85c6482fae61bfc461162d6a719336aa66977c7aa6019d2edfbc5345592ae",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1a1e53077957b0e8ddb8c96e",
  "source": {
    "blob": "2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 645,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a1e53077957b0e8ddb8c96e3f76b9797202b4203452ed720c14d21a5015e935",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14a85c6482fae61bfc461162d6a719336aa66977c7aa6019d2edfbc5345592ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ClosedUnderRestriction (contDiffGroupoid n I) :=
  (closedUnderRestriction_iff_id_le _).mpr
    (by
      apply StructureGroupoid.le_iff.mpr
      rintro e ⟨s, hs, hes⟩
      apply (contDiffGroupoid n I).eq_on_source' _ _ _ hes
      exact ofSet_mem_contDiffGroupoid n I hs)

end contDiffGroupoid

section SmoothManifoldWithCorners

/-! ### Smooth manifolds with corners -/


/-- Typeclass defining smooth manifolds with corners with respect to a model with corners, over a
field `𝕜` and with infinite smoothness to simplify typeclass search and statements later on. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
