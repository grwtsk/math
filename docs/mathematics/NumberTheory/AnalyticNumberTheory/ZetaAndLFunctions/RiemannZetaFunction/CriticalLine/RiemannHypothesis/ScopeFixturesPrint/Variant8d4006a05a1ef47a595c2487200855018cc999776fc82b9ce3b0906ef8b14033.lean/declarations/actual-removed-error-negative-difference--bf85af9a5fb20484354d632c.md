# actual_removed_error_negative_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:138261d0-ac29-4270-fa01-1f2a34e000bd",
  "kind": "theorem",
  "lexical_name": "actual_removed_error_negative_difference",
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
  "slug": "actual-removed-error-negative-difference--bf85af9a5fb20484354d632c",
  "source": {
    "blob": "deb192d9b3ffd69e610c7e91ae8ad315ae91afb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant8d4006a05a1ef47a595c2487200855018cc999776fc82b9ce3b0906ef8b14033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf85af9a5fb20484354d632cad37750ad7951447511a00277310be55b9681053",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant8d4006a05a1ef47a595c2487200855018cc999776fc82b9ce3b0906ef8b14033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:138261d0-ac29-4270-fa01-1f2a34e000bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_removed_error_negative_difference :
    (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := Real.add_one_le_exp (-(Real.log 2/2)/2)
  rw [show (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) =
      (primeLogError (Real.log 2/2)-primeLogError 0)+
        (criticalDecay 0-criticalDecay (Real.log 2/2)) by ring,
    primeError_difference_before_first (by linarith) (by linarith)]
  simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
#print endpoint_one_required
#print complete_drift_required
#print actual_removed_error_negative_difference
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant8d4006a05a1ef47a595c2487200855018cc999776fc82b9ce3b0906ef8b14033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant8d4006a05a1ef47a595c2487200855018cc999776fc82b9ce3b0906ef8b14033.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb192d9b3ffd69e610c7e91ae8ad315ae91afb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
