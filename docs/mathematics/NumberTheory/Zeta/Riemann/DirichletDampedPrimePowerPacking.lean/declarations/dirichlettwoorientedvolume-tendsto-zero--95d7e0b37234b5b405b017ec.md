# dirichletTwoOrientedVolume_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f53fe1f6-96fb-73c9-8969-eb0cd1820f5f",
  "kind": "theorem",
  "lexical_name": "dirichletTwoOrientedVolume_tendsto_zero",
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
  "slug": "dirichlettwoorientedvolume-tendsto-zero--95d7e0b37234b5b405b017ec",
  "source": {
    "blob": "8e294b9e792efd7f967b31fec557175bd4c5d4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 156,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d7e0b37234b5b405b017ec5fea4a0ee20ee1a42ffb1992000339154cb8aca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53fe1f6-96fb-73c9-8969-eb0cd1820f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletTwoOrientedVolume_tendsto_zero :
    Tendsto dirichletTwoOrientedVolume atTop (𝓝 0) := by
  have hx0 := dirichletTwoX_shift_tendsto_zero 0
  have hx1 := dirichletTwoX_shift_tendsto_zero 1
  have hx2 := dirichletTwoX_shift_tendsto_zero 2
  have hy0 := dirichletTwoY_shift_tendsto_zero 0
  have hy1 := dirichletTwoY_shift_tendsto_zero 1
  have hy2 := dirichletTwoY_shift_tendsto_zero 2
  have hdx01 :
      Tendsto (fun n => dirichletTwoX (n + 1) - dirichletTwoX n)
        atTop (𝓝 0) := by
    simpa using hx1.sub hx0
  have hdx12 :
      Tendsto
        (fun n => dirichletTwoX (n + 2) - dirichletTwoX (n + 1))
        atTop (𝓝 0) := by
    simpa using hx2.sub hx1
  have hdy01 :
      Tendsto (fun n => dirichletTwoY (n + 1) - dirichletTwoY n)
        atTop (𝓝 0) := by
    simpa using hy1.sub hy0
  have hdy12 :
      Tendsto
        (fun n => dirichletTwoY (n + 2) - dirichletTwoY (n + 1))
        atTop (𝓝 0) := by
    simpa using hy2.sub hy1
  convert! (hdx01.mul hdy12).sub (hdy01.mul hdx12) using 1
  all_goals simp only [zero_mul, sub_zero]

/-- The positive Gram-volume stages of the s=2 damped packing tend to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e294b9e792efd7f967b31fec557175bd4c5d4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
