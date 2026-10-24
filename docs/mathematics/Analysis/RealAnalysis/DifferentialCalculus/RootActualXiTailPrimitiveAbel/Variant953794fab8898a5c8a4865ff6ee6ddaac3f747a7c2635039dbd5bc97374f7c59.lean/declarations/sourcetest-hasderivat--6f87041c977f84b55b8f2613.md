# sourceTest_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceeda37b-3f67-5e51-0531-8d1a81829ff4",
  "kind": "theorem",
  "lexical_name": "sourceTest_hasDerivAt",
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
  "slug": "sourcetest-hasderivat--6f87041c977f84b55b8f2613",
  "source": {
    "blob": "525efd945a8ffa727c7d004fc5a2d5b96216654c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant953794fab8898a5c8a4865ff6ee6ddaac3f747a7c2635039dbd5bc97374f7c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f87041c977f84b55b8f26137749fe6c97451df1cceaeeb3bebcc7b86e90f295",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant953794fab8898a5c8a4865ff6ee6ddaac3f747a7c2635039dbd5bc97374f7c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceeda37b-3f67-5e51-0531-8d1a81829ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualXiTailSourceTest A)
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) t := by
  have h1 := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt
  have h0 := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt
  convert h1.sub (h0.div_const 2) using 1 <;> first
  | rfl
  | simp only [iteratedDeriv_succ, iteratedDeriv_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant953794fab8898a5c8a4865ff6ee6ddaac3f747a7c2635039dbd5bc97374f7c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant953794fab8898a5c8a4865ff6ee6ddaac3f747a7c2635039dbd5bc97374f7c59.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525efd945a8ffa727c7d004fc5a2d5b96216654c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
