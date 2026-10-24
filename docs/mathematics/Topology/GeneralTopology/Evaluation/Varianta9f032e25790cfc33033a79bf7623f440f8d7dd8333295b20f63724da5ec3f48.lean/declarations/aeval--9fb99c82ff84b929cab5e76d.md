# aeval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:deb54cfa53937da379b38874e099ec5d07b1a93306572ccdddc7115805a5d4e0",
  "kind": "def",
  "lexical_name": "aeval",
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
  "slug": "aeval--9fb99c82ff84b929cab5e76d",
  "source": {
    "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fb99c82ff84b929cab5e76dffaa14bbdc47fe1994765e6e90c2d819c7a5ef73",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:deb54cfa53937da379b38874e099ec5d07b1a93306572ccdddc7115805a5d4e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def aeval (ha : HasEval a) : MvPowerSeries σ R →ₐ[R] S where
  toRingHom := MvPowerSeries.eval₂Hom (continuous_algebraMap R S) ha
  commutes' r := by
    simp only [toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe, MonoidHom.coe_coe]
    rw [← c_eq_algebraMap, coe_eval₂Hom, eval₂_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0349331a0f4571ac8e5122ce0f01085e426d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
