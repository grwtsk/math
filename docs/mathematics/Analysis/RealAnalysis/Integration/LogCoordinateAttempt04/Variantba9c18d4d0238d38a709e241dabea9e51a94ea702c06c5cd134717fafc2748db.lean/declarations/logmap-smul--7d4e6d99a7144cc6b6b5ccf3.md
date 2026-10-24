# logMap_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e8d1060-5047-8d68-e0f5-7fb44c921441",
  "kind": "theorem",
  "lexical_name": "logMap_smul",
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
  "slug": "logmap-smul--7d4e6d99a7144cc6b6b5ccf3",
  "source": {
    "blob": "c951d16274751012895bc95bf3cd58c7633ef9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4e6d99a7144cc6b6b5ccf3c2c111f6898a65b5f6c3c38ca5f145f0de503a95",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e8d1060-5047-8d68-e0f5-7fb44c921441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_smul (c : ℂ) (f : PositiveL2) : logMap (c • f) = c • logMap f := by
  apply Lp.ext
  filter_upwards [logMap_ae (c • f),logMap_ae f,Lp.coeFn_smul c (logMap f),
    exp_quasi.ae_eq_comp (Lp.coeFn_smul c f)] with u hcf hf hsmul hp
  dsimp only [Pi.smul_apply,Function.comp_apply] at hsmul hp
  rw [hcf,hsmul,hf,logFunc,logFunc,hp]
  simp only [smul_eq_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c951d16274751012895bc95bf3cd58c7633ef9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
