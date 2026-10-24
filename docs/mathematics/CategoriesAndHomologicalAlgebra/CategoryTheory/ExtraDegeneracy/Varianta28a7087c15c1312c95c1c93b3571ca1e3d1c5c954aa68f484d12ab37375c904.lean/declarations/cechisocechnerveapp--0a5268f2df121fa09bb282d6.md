# cechIsoCechNerveApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:310bdbe094a3e452652239ee14785505db10a21584e1b84bd627c35c85f24863",
  "kind": "def",
  "lexical_name": "cechIsoCechNerveApp",
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
  "slug": "cechisocechnerveapp--0a5268f2df121fa09bb282d6",
  "source": {
    "blob": "d5ccd8e819f3583702f3a82ceaeb80e7573c8709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Varianta28a7087c15c1312c95c1c93b3571ca1e3d1c5c954aa68f484d12ab37375c904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a5268f2df121fa09bb282d6eb766733f07ee63727acfa3f56c298dd8fb1a9db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Varianta28a7087c15c1312c95c1c93b3571ca1e3d1c5c954aa68f484d12ab37375c904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:310bdbe094a3e452652239ee14785505db10a21584e1b84bd627c35c85f24863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cechIsoCechNerveApp (n : SimplexCategoryᵒᵖ) :
    U.cech.obj n ≅ (Arrow.cechNerve (Arrow.mk ((isTerminalIncl _ hT).from U))).obj n :=
  IsLimit.conePointUniqueUpToIso (WidePullbackCone.isLimitOfFan
    (arrows := fun _ ↦ (isTerminalIncl _ hT).from U)
    (U.isLimitPowerFan (ToType n.unop)) (isTerminalIncl _ hT)) (limit.isLimit _)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Varianta28a7087c15c1312c95c1c93b3571ca1e3d1c5c954aa68f484d12ab37375c904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Varianta28a7087c15c1312c95c1c93b3571ca1e3d1c5c954aa68f484d12ab37375c904.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ccd8e819f3583702f3a82ceaeb80e7573c8709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
