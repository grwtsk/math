# scaleAmplitude_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7ca2e96-1750-7c9d-66c4-6ac928d433df",
  "kind": "theorem",
  "lexical_name": "scaleAmplitude_hasDerivAt",
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
  "slug": "scaleamplitude-hasderivat--6b815a927e12ba213bdac758",
  "source": {
    "blob": "874425b61e9aedcf0b58ec9f5da20f038e9d1eac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b815a927e12ba213bdac7581fc43cf1dc03dcaf50deb69046d2f0be64453eb1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7ca2e96-1750-7c9d-66c4-6ac928d433df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleAmplitude_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt scaleAmplitude
      (-(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
        scaleAmplitude A) A := by
  have hn := sourceNormalization_pos hA
  have hs := ((hasDerivAt_id A).mul (sourceNormalization_hasDerivAt hA)).sqrt
    (mul_pos hA hn).ne'
  have hd := (hasDerivAt_const A (1 : ℝ)).div hs
    (Real.sqrt_pos.mpr (mul_pos hA hn)).ne'
  have hsquare := Real.sq_sqrt (mul_pos hA hn).le
  convert hd using 1 <;> first
    | rfl
    | (dsimp [scaleAmplitude]; field_simp; simp only [hsquare]; ring)

/-- The actual source scale derivative p_A; it is not the spatial derivative q'_A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variant224c465b703434cc2910a75702a1345ebecafd737b7124f2e55a135ec0811a60.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `874425b61e9aedcf0b58ec9f5da20f038e9d1eac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
