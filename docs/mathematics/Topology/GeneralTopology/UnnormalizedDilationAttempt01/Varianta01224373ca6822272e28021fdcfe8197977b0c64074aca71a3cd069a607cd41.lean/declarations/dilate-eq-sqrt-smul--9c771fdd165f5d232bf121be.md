# dilate_eq_sqrt_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b253a460-b573-0050-5582-5d8e5c42c7c3",
  "kind": "theorem",
  "lexical_name": "dilate_eq_sqrt_smul",
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
  "slug": "dilate-eq-sqrt-smul--9c771fdd165f5d232bf121be",
  "source": {
    "blob": "aa2414f89ebcb2d9b0da1c91f37764fcf5ee783f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Varianta01224373ca6822272e28021fdcfe8197977b0c64074aca71a3cd069a607cd41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c771fdd165f5d232bf121be45faff7e8f941bebe2c6a9bf9e4cf487b9887cea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Varianta01224373ca6822272e28021fdcfe8197977b0c64074aca71a3cd069a607cd41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b253a460-b573-0050-5582-5d8e5c42c7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_eq_sqrt_smul (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    dilate a ha f = (Real.sqrt a : ℂ) • unnormalized a ha f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha f,unnormalized_ae a ha f,
    Lp.coeFn_smul (Real.sqrt a : ℂ) (unnormalized a ha f)] with x hd hk hs
  rw [hd,hs,hk]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Varianta01224373ca6822272e28021fdcfe8197977b0c64074aca71a3cd069a607cd41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Varianta01224373ca6822272e28021fdcfe8197977b0c64074aca71a3cd069a607cd41.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa2414f89ebcb2d9b0da1c91f37764fcf5ee783f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
