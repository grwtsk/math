# jointMainTermTail_iff_strictColumnInteriorTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "235bf0c46037c636c70629d96a6493ee5025247c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea3e6884adf4d50a4c13b2ed2ee4b267fb06af2a0eb49425a49c56c63488399c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b47b08f-6717-d164-b6a1-34c3419f24fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e4250c2-28a0-6b52-70f3-a8655128e4ac",
  "kind": "theorem",
  "lexical_name": "jointMainTermTail_iff_strictColumnInteriorTail",
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
  "slug": "jointmaintermtail-iff-strictcolumninteriortail--b0b7c18a6938a3f59811fbf6",
  "source": {
    "blob": "235bf0c46037c636c70629d96a6493ee5025247c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variantea3e6884adf4d50a4c13b2ed2ee4b267fb06af2a0eb49425a49c56c63488399c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b7c18a6938a3f59811fbf674b8838a360136a2279fef0de4b1dba43dcfb3ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variantea3e6884adf4d50a4c13b2ed2ee4b267fb06af2a0eb49425a49c56c63488399c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e4250c2-28a0-6b52-70f3-a8655128e4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMainTermTail_iff_strictColumnInteriorTail :
    VaughanOperatorReview.JointMainTermTailUpperBound SourceSamplingLedger.independentMainTerm ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
  unfold VaughanOperatorReview.JointMainTermTailUpperBound
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 12, by linarith, R, hR, ?_⟩
    intro A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).1 (h A hRA)
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 12, by linarith, R, hR, ?_⟩
    intro A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).2 (h A hRA)

end
end FormalResearch.RiemannHypothesis.SourceStrictColumnInterior
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variantea3e6884adf4d50a4c13b2ed2ee4b267fb06af2a0eb49425a49c56c63488399c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variantea3e6884adf4d50a4c13b2ed2ee4b267fb06af2a0eb49425a49c56c63488399c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235bf0c46037c636c70629d96a6493ee5025247c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
