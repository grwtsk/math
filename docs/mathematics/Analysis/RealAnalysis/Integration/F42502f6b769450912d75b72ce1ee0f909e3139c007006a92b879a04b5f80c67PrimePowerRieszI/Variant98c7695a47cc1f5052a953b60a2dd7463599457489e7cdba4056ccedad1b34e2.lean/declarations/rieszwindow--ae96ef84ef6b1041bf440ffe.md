# rieszWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66f25411f967683b6be2ef49773f30517c417b8b7e7e4e15de7e6f58ec1a5852",
  "kind": "def",
  "lexical_name": "rieszWindow",
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
  "slug": "rieszwindow--ae96ef84ef6b1041bf440ffe",
  "source": {
    "blob": "94965ed8082df2999bbe15ed9510994f293b12cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae96ef84ef6b1041bf440ffebb90f77b802e47e27a38c6561e56a7c83a8facdd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66f25411f967683b6be2ef49773f30517c417b8b7e7e4e15de7e6f58ec1a5852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rieszWindow (A y : ℝ) : ℂ :=
  (Iio (2 * A)).indicator (fun y : ℝ ↦ (extendedBoundaryKernel A (2 * A - y) : ℂ)) y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94965ed8082df2999bbe15ed9510994f293b12cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
