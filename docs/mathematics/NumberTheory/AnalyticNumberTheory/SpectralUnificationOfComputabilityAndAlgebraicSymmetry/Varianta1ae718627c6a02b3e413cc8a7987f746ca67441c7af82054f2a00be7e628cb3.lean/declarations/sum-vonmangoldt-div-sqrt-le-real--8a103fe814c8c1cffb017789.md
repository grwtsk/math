# sum_vonMangoldt_div_sqrt_le_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53dfec79390944a5d8d3c706d6fd17aee7227d40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1ae718627c6a02b3e413cc8a7987f746ca67441c7af82054f2a00be7e628cb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:476d5900-2aca-7081-e236-b2c650a2aec7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:495bd5f0-5130-4ad8-241a-b9a537450edb",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_sqrt_le_real",
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
  "slug": "sum-vonmangoldt-div-sqrt-le-real--8a103fe814c8c1cffb017789",
  "source": {
    "blob": "53dfec79390944a5d8d3c706d6fd17aee7227d40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta1ae718627c6a02b3e413cc8a7987f746ca67441c7af82054f2a00be7e628cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a103fe814c8c1cffb017789130dbdb3d4cac823022c80350056c3b3b9eadc20",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta1ae718627c6a02b3e413cc8a7987f746ca67441c7af82054f2a00be7e628cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:495bd5f0-5130-4ad8-241a-b9a537450edb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_sqrt_le_real (x : ℝ) (hx : 0 ≤ x) :
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, vonMangoldt n / Real.sqrt n) ≤
      2 * (Real.log 4 + 4) * Real.sqrt x :=
  (sum_vonMangoldt_div_sqrt_le _).trans
    (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt (Nat.floor_le hx)) (by positivity))

end
end EstimateVaughanBounds
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta1ae718627c6a02b3e413cc8a7987f746ca67441c7af82054f2a00be7e628cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta1ae718627c6a02b3e413cc8a7987f746ca67441c7af82054f2a00be7e628cb3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53dfec79390944a5d8d3c706d6fd17aee7227d40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
