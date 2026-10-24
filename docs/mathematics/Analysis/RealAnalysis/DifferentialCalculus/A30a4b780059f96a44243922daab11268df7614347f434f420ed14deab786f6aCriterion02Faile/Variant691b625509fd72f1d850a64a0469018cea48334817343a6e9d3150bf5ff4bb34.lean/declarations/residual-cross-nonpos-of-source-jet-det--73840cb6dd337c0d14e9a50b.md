# residual_cross_nonpos_of_source_jet_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e9b954-4d92-28f9-d608-a48cc07148e2",
  "kind": "theorem",
  "lexical_name": "residual_cross_nonpos_of_source_jet_det",
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
  "slug": "residual-cross-nonpos-of-source-jet-det--73840cb6dd337c0d14e9a50b",
  "source": {
    "blob": "9d080fad9cddc20efa3c8303452d5c49f8450ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73840cb6dd337c0d14e9a50b97582945ab87ff3414e9bf85a32fef76c57fb61f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e9b954-4d92-28f9-d608-a48cc07148e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_cross_nonpos_of_source_jet_det
    (f0 f1 f2 : ℝ → ℝ) (t u v : ℝ) (hp : 0 ≤ f0 t)
    (hd : Matrix.det !![f0 t, f0 u, f0 v; f1 t, f1 u, f1 v; f2 t, f2 u, f2 v] ≤ 0) :
    (f2 t * f0 v - f0 t * f2 v) * (f1 t * f0 u - f0 t * f1 u) -
      (f2 t * f0 u - f0 t * f2 u) * (f1 t * f0 v - f0 t * f1 v) ≤ 0 := by
  have heq := oriented_plucker_three_scalar
    (f0 t) (f1 t) (f2 t) (f0 u) (f1 u) (f2 u) (f0 v) (f1 v) (f2 v)
  have hprod := mul_nonpos_of_nonneg_of_nonpos hp hd
  simp [Matrix.det_fin_three] at hprod
  nlinarith only [heq, hprod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Variant691b625509fd72f1d850a64a0469018cea48334817343a6e9d3150bf5ff4bb34.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d080fad9cddc20efa3c8303452d5c49f8450ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
