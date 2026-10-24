# hasDerivAt_thetaADerivSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fac74efe-8137-5ef0-6711-249043438fab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7876dc4-d485-ab30-1912-1676ca07b46a",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaADerivSeries",
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
  "slug": "hasderivat-thetaaderivseries--bd9fcabcf2dbabb3a03de601",
  "source": {
    "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd9fcabcf2dbabb3a03de601d3e7a1119c1de3a89a7885547f0e2e3f698b3dd3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7876dc4-d485-ab30-1912-1676ca07b46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaADerivSeries (t : ℝ) :
    HasDerivAt thetaADerivSeries (thetaASecondSeries t) t := by
  let a := t - 1
  let b := t + 1
  have ht : t ∈ Ioo a b := by
    constructor <;> dsimp [a, b] <;> linarith
  have hseries := hasDerivAt_tsum_of_isPreconnected
    (thetaASecondCompactBound_summable a b) isOpen_Ioo ordConnected_Ioo.isPreconnected
    (fun m y _ => thetaAModeDeriv_hasDerivAt m y)
    (fun m y hy => thetaAModeSecond_norm_le_compactBound ⟨hy.1.le, hy.2.le⟩ m)
    ht (thetaAModeDeriv_summable t) ht
  simpa only [thetaADerivSeries, thetaASecondSeries] using! hseries

/-- The literal theta source satisfies the exact differential bridge `A'' - A = 8 Phi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
