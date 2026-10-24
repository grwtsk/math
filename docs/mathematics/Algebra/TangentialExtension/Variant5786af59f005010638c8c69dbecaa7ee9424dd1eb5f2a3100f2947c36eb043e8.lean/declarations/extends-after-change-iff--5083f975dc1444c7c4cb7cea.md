# extends_after_change_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a728a31-e6a9-6a21-5142-673c119512fe",
  "kind": "theorem",
  "lexical_name": "extends_after_change_iff",
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
  "slug": "extends-after-change-iff--5083f975dc1444c7c4cb7cea",
  "source": {
    "blob": "1aa1917f23f873a3864d61458495c7cbe8105e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 181,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5083f975dc1444c7c4cb7ceabef889d2850e3dd95f3aa99f72ecaf2b408e8053",
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

Occurrence: `result:4a728a31-e6a9-6a21-5142-673c119512fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extends_after_change_iff
    (Θ : TangentialObstructionTheory certificate)
    (change : Θ.FramingChange)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.extendsAcrossTrace (Θ.framingAction change θ) ↔
      Θ.boundaryClass θ + Θ.framingDefect change = 0 := by
  letI := Θ.framingChangeAddGroup
  letI := Θ.obstructionAddCommGroup
  rw [Θ.extends_iff_vanishes, Θ.boundaryClass_action]

/-- A framing change whose defect is the negative obstruction produces an extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aa1917f23f873a3864d61458495c7cbe8105e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
