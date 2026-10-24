# errorProfile_eventual_of_pnt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9605059-560f-2df1-3600-068400247984",
  "kind": "theorem",
  "lexical_name": "errorProfile_eventual_of_pnt",
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
  "slug": "errorprofile-eventual-of-pnt--7870852b88cd9cbcbf3d49bc",
  "source": {
    "blob": "f50d7221c777730623b7739d2cf51701ac27f8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7870852b88cd9cbcbf3d49bc7a69be5c969dd9785e98bc533a0817e48ccfb0c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9605059-560f-2df1-3600-068400247984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errorProfile_eventual_of_pnt {c : ℝ}
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ t ≥ T,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨C, hC, hb⟩ := hpnt.exists_pos
  have hbound := Real.tendsto_exp_atTop.eventually hb.bound
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound
  refine ⟨C, hC, max T 1, le_max_right _ _, ?_⟩
  intro t ht
  have h := hT t (le_trans (le_max_left _ _) ht)
  simpa [Real.norm_eq_abs, Pi.sub_apply, id_eq, Real.log_exp,
    abs_of_pos (Real.exp_pos t), abs_of_pos (Real.exp_pos _),
    errorProfile, chebyshevError_eq_psi_sub, mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f50d7221c777730623b7739d2cf51701ac27f8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
