# _root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.Complex.Gamma_ofReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d5cf694-362e-39a4-87c8-c43db5d06ea0",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.Complex.Gamma_ofReal",
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
  "slug": "root-grwtsk-analysis-specialfunctions-gammaintegrandislittleo-variant309--8323ace86aa3901179fbfbcc",
  "source": {
    "blob": "1da8d706d4bd3df935567e5f9e8abed748af437f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 435,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8323ace86aa3901179fbfbccf623b78ecf1ebed433d35b2323676a91fdab75bd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d5cf694-362e-39a4-87c8-c43db5d06ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.Complex.Gamma_ofReal (s : ℝ) : Complex.Gamma (s : ℂ) = Gamma s := by
  rw [Gamma, eq_comm, ← Complex.conj_eq_iff_re, ← Complex.Gamma_conj, Complex.conj_ofReal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da8d706d4bd3df935567e5f9e8abed748af437f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
