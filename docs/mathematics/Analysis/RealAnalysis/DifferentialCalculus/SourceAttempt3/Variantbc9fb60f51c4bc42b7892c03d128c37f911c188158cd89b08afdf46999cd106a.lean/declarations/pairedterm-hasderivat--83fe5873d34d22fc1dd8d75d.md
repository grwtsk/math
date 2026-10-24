# pairedTerm_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d607d93d9d3a2691557ac161e5fbbd3407046d3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86b6d123-6bde-fdde-ee41-433034ae83eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b00c5cb8-450d-5b6c-7aaf-204a0874a1ac",
  "kind": "theorem",
  "lexical_name": "pairedTerm_hasDerivAt",
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
  "slug": "pairedterm-hasderivat--83fe5873d34d22fc1dd8d75d",
  "source": {
    "blob": "d607d93d9d3a2691557ac161e5fbbd3407046d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83fe5873d34d22fc1dd8d75db947fbb465aa78a6c5efc4a96d82d5274ee1ee13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b00c5cb8-450d-5b6c-7aaf-204a0874a1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n) (firstTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hlog := ContinuousResearch.CompensatedGammaProfile.log_argument_pos hx n
  have h := ((hasDerivAt_id x).div_const (a n)).sub
    (((hasDerivAt_id x).div_const (a n)).const_add 1 |>.log hlog.ne')
  change HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n)
    (1 / a n - (1 / a n) / (1 + x / a n)) x at h
  apply h.congr_deriv
  dsimp [firstTerm]
  have hax' : a n + x ≠ 0 := hax.ne'
  have hxap : x + a n ≠ 0 := by simpa only [add_comm] using hax'
  rw [show 1 + x / a n = (a n + x) / a n by field_simp]
  field_simp [ha.ne', hax', hxap]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607d93d9d3a2691557ac161e5fbbd3407046d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
