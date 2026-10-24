# mangoldtError_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aafa2ed4-57d0-4e7b-8297-52ad1670d034",
  "kind": "theorem",
  "lexical_name": "mangoldtError_bounds",
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
  "slug": "mangoldterror-bounds--cfc3c1221dc86519d459037f",
  "source": {
    "blob": "52fd69a70b5f126acf9e2bb07932acce27692c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 232,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc3c1221dc86519d459037fd42404ad1915fe57093f013bb6da3122ea48e5f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aafa2ed4-57d0-4e7b-8297-52ad1670d034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtError_bounds {x : ℝ} (hx : 1 ≤ x) :
    -1-log 2 ≤ mangoldtError x ∧ mangoldtError x ≤ log 4+4 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.one_le_floor_iff x).mpr hx
  have hn := weightedMangoldt_sub_log_bounds ⌊x⌋₊ hN
  have hf := log_floor_error x hx
  have hlog : log (⌊x⌋₊ : ℝ)≤log x :=
    log_le_log (by exact_mod_cast (show 0 < ⌊x⌋₊ by omega))
      (Nat.floor_le (by linarith))
  change -1-log 2 ≤ weightedMangoldt ⌊x⌋₊-log x ∧
    weightedMangoldt ⌊x⌋₊-log x ≤ log 4+4
  constructor <;> linarith [(abs_le.mp hf).1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52fd69a70b5f126acf9e2bb07932acce27692c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
