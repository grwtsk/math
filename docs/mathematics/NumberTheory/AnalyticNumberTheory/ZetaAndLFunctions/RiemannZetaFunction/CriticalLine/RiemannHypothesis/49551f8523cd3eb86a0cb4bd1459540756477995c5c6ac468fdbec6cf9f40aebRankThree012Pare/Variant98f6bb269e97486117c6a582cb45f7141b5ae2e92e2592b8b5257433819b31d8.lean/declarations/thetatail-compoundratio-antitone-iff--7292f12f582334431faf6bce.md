# thetaTail_compoundRatio_antitone_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0dc24b3-6c98-1e3a-6045-465a939a91cb",
  "kind": "theorem",
  "lexical_name": "thetaTail_compoundRatio_antitone_iff",
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
  "slug": "thetatail-compoundratio-antitone-iff--7292f12f582334431faf6bce",
  "source": {
    "blob": "6239de81650871309a1b89c69027a2242260d0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7292f12f582334431faf6bce267b3fd4745c00e9de0e5d634867dd09468d1554",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0dc24b3-6c98-1e3a-6045-465a939a91cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_compoundRatio_antitone_iff :
    AntitoneOn (fun t : ℝ => thetaTailGap 0 4 t / thetaTailGap 0 2 t) (Ici 0) ↔
      ∀ t : ℝ, 0 ≤ t → thetaTailRankThreeNumerator t ≤ 0 := by
  constructor
  · intro ha t ht
    have h := ha.derivWithin_nonpos (x := t)
    rw [(hasDerivAt_thetaTail_compoundRatio ht).hasDerivWithinAt.derivWithin
      (uniqueDiffOn_Ici 0 t ht)] at h
    exact (div_le_iff₀ (sq_pos_of_pos (thetaTailGap_zero_two_positive ht))).mp h |>.trans_eq
      (by ring)
  · intro hn
    apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio ht).continuousAt.continuousWithinAt
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).differentiableAt
        |>.differentiableWithinAt
    · intro t ht
      rw [(hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).deriv]
      exact div_nonpos_of_nonpos_of_nonneg (hn t (interior_subset ht)) (sq_nonneg _)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239de81650871309a1b89c69027a2242260d0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
