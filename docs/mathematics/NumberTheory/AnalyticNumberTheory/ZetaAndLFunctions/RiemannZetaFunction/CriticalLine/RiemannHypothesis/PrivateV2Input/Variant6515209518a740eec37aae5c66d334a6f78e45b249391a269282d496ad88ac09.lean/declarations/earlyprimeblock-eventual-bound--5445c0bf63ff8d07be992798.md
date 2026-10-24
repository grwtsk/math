# earlyPrimeBlock_eventual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ef2c759-5d64-d531-e0a1-a02ec184eddb",
  "kind": "theorem",
  "lexical_name": "earlyPrimeBlock_eventual_bound",
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
  "slug": "earlyprimeblock-eventual-bound--5445c0bf63ff8d07be992798",
  "source": {
    "blob": "c74231b218add26f5de32d3b9115a9de8003131b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant6515209518a740eec37aae5c66d334a6f78e45b249391a269282d496ad88ac09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5445c0bf63ff8d07be9927983718f009af3721f3d389c7598cd87e6656115252",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant6515209518a740eec37aae5c66d334a6f78e45b249391a269282d496ad88ac09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ef2c759-5d64-d531-e0a1-a02ec184eddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyPrimeBlock_eventual_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      earlyPrimeBlock A ≤ -(7/2560 : ℝ)*A*Real.exp (A/160) := by
  obtain ⟨C, _, hC⟩ := primeLogError_uniformly_bounded
  refine ⟨max 160 (320 * C), ?_, ?_⟩
  · exact (by norm_num : (1 : ℝ) ≤ 160).trans (le_max_left _ _)
  · intro A hA
    exact earlyPrimeBlock_le ((le_max_left _ _).trans hA) ((le_max_right _ _).trans hA) hC

/-- Closed-prefix subtraction partitions the whole actual prime inventory, including equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant6515209518a740eec37aae5c66d334a6f78e45b249391a269282d496ad88ac09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant6515209518a740eec37aae5c66d334a6f78e45b249391a269282d496ad88ac09.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c74231b218add26f5de32d3b9115a9de8003131b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
