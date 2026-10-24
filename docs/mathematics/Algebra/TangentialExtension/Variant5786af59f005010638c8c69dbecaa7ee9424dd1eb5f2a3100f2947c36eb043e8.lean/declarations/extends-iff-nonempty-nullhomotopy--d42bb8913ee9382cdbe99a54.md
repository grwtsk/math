# extends_iff_nonempty_nullhomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fcafe93-9248-b73a-a008-d4cc6fc281b7",
  "kind": "theorem",
  "lexical_name": "extends_iff_nonempty_nullhomotopy",
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
  "slug": "extends-iff-nonempty-nullhomotopy--d42bb8913ee9382cdbe99a54",
  "source": {
    "blob": "1aa1917f23f873a3864d61458495c7cbe8105e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 230,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d42bb8913ee9382cdbe99a5485843136803d59994d38056771181f2a70c0a044",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fcafe93-9248-b73a-a008-d4cc6fc281b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extends_iff_nonempty_nullhomotopy
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    Θ.extendsAcrossTrace θ ↔ Nonempty (Θ.Nullhomotopy (Θ.obstructionMap θ)) := by
  letI := Θ.obstructionAddCommGroup
  rw [Θ.extends_iff_vanishes]
  exact (Θ.nullhomotopy_iff_zero (Θ.obstructionMap θ)).symm

/-- The reference framing is the neutral element for the documented left action. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aa1917f23f873a3864d61458495c7cbe8105e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
