# boundary_two_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa1669c8b7781648ab5f11c877e98343b2688ec8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aaf83e2-306e-826f-befb-a3826bb0ded3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9980653c-fdc8-5577-db9a-36e892c2e381",
  "kind": "theorem",
  "lexical_name": "boundary_two_nonnegative",
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
  "slug": "boundary-two-nonnegative--cff240283016d8304f201eb7",
  "source": {
    "blob": "fa1669c8b7781648ab5f11c877e98343b2688ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff240283016d8304f201eb7cfd0f9d1cf67be29a9c1a8f9347c560cf1401739",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9980653c-fdc8-5577-db9a-36e892c2e381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_two_nonnegative (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    (r c : Fin 2 ↪o ℕ) (hboundary : ¬ Separated r c) :
    0 ≤ minor a r c := by
  have hgap : c 0 < r 1 := by
    exact lt_of_not_ge (fun h => hboundary ((separated_iff_last_le_first r c).mpr h))
  have hentry (i j : ℕ) : 0 ≤ entry a i j := by
    unfold entry
    split_ifs
    · exact ha _
    · exact le_rfl
  change 0 ≤ Matrix.det (Matrix.of fun i j : Fin 2 => entry a (r i) (c j))
  rw [Matrix.det_fin_two]
  simp only [Matrix.of_apply]
  rw [entry_below a hgap]
  simpa using mul_nonneg (hentry (r 0) (c 0)) (hentry (r 1) (c 1))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1669c8b7781648ab5f11c877e98343b2688ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
