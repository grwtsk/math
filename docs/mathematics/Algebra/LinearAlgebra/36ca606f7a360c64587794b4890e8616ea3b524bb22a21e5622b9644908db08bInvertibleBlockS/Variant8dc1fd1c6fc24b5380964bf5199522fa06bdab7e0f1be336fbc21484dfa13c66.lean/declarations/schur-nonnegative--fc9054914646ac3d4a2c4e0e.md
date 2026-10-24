# schur_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c052380e-a8ac-3424-a50a-f01557135274",
  "kind": "theorem",
  "lexical_name": "schur_nonnegative",
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
  "slug": "schur-nonnegative--fc9054914646ac3d4a2c4e0e",
  "source": {
    "blob": "ebbd8cd1553977bdaf725e268ce2610f546a1076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc9054914646ac3d4a2c4e0eff25890a4e58b03ba425595c9fd116b6ef4bcc6d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c052380e-a8ac-3424-a50a-f01557135274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schur_nonnegative (I : InvertibleProvenanceBlock G) (u : U) :
    0 ≤ I.blockSchurSolver.schurForm.form u u :=
  I.blockSchurSolver.schurForm_nonnegative u

/-- The canonical invertible-block Schur form is the autonomous block minus the
provenance energy of the solved correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbd8cd1553977bdaf725e268ce2610f546a1076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
