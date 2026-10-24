# coordinateDomain_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a95bfe-d97a-d3db-0673-c58ec26f8787",
  "kind": "theorem",
  "lexical_name": "coordinateDomain_dense",
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
  "slug": "coordinatedomain-dense--2595ef712229035d6b592fc8",
  "source": {
    "blob": "9bdd203d57057601f12400f8cc7cb0700af798fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2595ef712229035d6b592fc8bc083dfb9d7d4f574ce51dd1f85266876043839a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1a95bfe-d97a-d3db-0673-c58ec26f8787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateDomain_dense [μ.Regular] :
    Dense (coordinateDomain μ : Set (Lp ℂ 2 μ)) := by
  intro f
  rw [Metric.mem_closure_iff]
  intro ε hε
  obtain ⟨g, hs, he, hc, hg⟩ := (Lp.memLp f).exists_hasCompactSupport_eLpNorm_sub_le
    (by norm_num : (2 : ℝ≥0∞) ≠ ∞)
    (show ENNReal.ofReal (ε / 2) ≠ 0 by positivity)
  refine ⟨hg.toLp g, ?_, ?_⟩
  · simpa using compactContinuous_mem_coordinateDomain μ g hc hs
  · apply edist_lt_ofReal.mp
    have hd : edist f (hg.toLp g) = eLpNorm ((f : ℝ → ℂ) - g) 2 μ := by
      conv_lhs => rw [← Lp.toLp_coeFn f (Lp.memLp f)]
      exact Lp.edist_toLp_toLp f g (Lp.memLp f) hg
    rw [hd]
    apply he.trans_lt
    exact (ENNReal.ofReal_lt_ofReal_iff hε).mpr (by linarith)

end
end FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdd203d57057601f12400f8cc7cb0700af798fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
