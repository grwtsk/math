# criticalRemoved_error_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2294790180868be2d18accfc21235ec92772d588",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e4167276c4d1121918218e8fd4bb662c1bd38b728cee410d63282724839ac5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c3e952f-2069-8eb9-fbf7-3d211d08c73e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91fd2830-b567-32c7-7dda-1e3f4a0ca7d7",
  "kind": "theorem",
  "lexical_name": "criticalRemoved_error_window",
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
  "slug": "criticalremoved-error-window--8b8008dfd797b770a4a04c48",
  "source": {
    "blob": "2294790180868be2d18accfc21235ec92772d588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant0e4167276c4d1121918218e8fd4bb662c1bd38b728cee410d63282724839ac5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b8008dfd797b770a4a04c4890dd2cdb72b0bee9db9c02efb551ab060a225d05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant0e4167276c4d1121918218e8fd4bb662c1bd38b728cee410d63282724839ac5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91fd2830-b567-32c7-7dda-1e3f4a0ca7d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRemoved_error_window (s t : ℝ) :
    (primeLogError s-criticalDecay s)-(primeLogError t-criticalDecay t) =
      primeLogWindow t s (fun _ => 1)-∫ u in t..s, (1-criticalDecay u/2) := by
  have hd (u : ℝ) : HasDerivAt (fun x => x+criticalDecay x) (1-criticalDecay u/2) u := by
    convert (hasDerivAt_id u).add (decay_hasDerivAt u) using 1 <;>
      first | rfl | ring
  have hi : IntervalIntegrable (fun u => 1-criticalDecay u/2) volume t s :=
    (continuous_const.sub (decay_continuous.div_const 2)).intervalIntegrable (μ := volume) t s
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) hi
  rw [hf]
  have he := primeError_difference_window s t
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant0e4167276c4d1121918218e8fd4bb662c1bd38b728cee410d63282724839ac5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant0e4167276c4d1121918218e8fd4bb662c1bd38b728cee410d63282724839ac5d.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2294790180868be2d18accfc21235ec92772d588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
