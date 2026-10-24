# ActualFormAdmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79ca32c4a296a8833c8dada90a33e2d9f0f69c6511620bf17c59116a52b73a4c",
  "kind": "def",
  "lexical_name": "ActualFormAdmission",
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
  "slug": "actualformadmission--3197c76f1452b338e5a84e49",
  "source": {
    "blob": "8d4d033136df2d7d1e9c1d8c56308f2c3d20a7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSideTargetsDraft/Variant03b671af532ccb510ec1467722d712cb36dd5e6afed0ff64936130bb48c96b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3197c76f1452b338e5a84e491574715241f7afff5e577bb909c08547bd050b86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSideTargetsDraft/Variant03b671af532ccb510ec1467722d712cb36dd5e6afed0ff64936130bb48c96b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79ca32c4a296a8833c8dada90a33e2d9f0f69c6511620bf17c59116a52b73a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ActualFormAdmission (A : ℝ) : Prop :=
  BridgeAdmissibility.LogarithmicDomain A (actualTest A) ∧
  Integrable (fun ξ ↦ archimedeanMultiplier ξ *
    Complex.normSq (sourceFourier (actualTest A) ξ)) ∧
  Integrable (fun x ↦ Real.exp (x / 2) * actualTest A x) ∧
  Integrable (fun x ↦ Real.exp (-x / 2) * actualTest A x) ∧
  (∀ t : ℝ, Integrable (fun x ↦ actualTest A x * actualTest A (x - t)))

/-- Complete equation (16), with genuine transform integrals and a summable
complex-square family before either totalized integral or tsum is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSideTargetsDraft/Variant03b671af532ccb510ec1467722d712cb36dd5e6afed0ff64936130bb48c96b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSideTargetsDraft/Variant03b671af532ccb510ec1467722d712cb36dd5e6afed0ff64936130bb48c96b33.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4d033136df2d7d1e9c1d8c56308f2c3d20a7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
