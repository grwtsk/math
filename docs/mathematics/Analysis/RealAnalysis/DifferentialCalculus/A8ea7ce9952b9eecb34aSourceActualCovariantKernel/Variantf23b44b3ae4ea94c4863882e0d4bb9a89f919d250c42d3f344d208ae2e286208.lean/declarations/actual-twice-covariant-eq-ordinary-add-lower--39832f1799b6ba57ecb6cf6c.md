# actual_twice_covariant_eq_ordinary_add_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33a57e5a-b5ef-ddb4-1f96-617676762a07",
  "kind": "theorem",
  "lexical_name": "actual_twice_covariant_eq_ordinary_add_lower",
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
  "slug": "actual-twice-covariant-eq-ordinary-add-lower--39832f1799b6ba57ecb6cf6c",
  "source": {
    "blob": "89ae989985424bde57c0b64a1898f0ea74dfee7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39832f1799b6ba57ecb6cf6cf9ff3983262fea356f3606e811fcd9a590ad1562",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a57e5a-b5ef-ddb4-1f96-617676762a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_twice_covariant_eq_ordinary_add_lower (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s =
        deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) s +
          actualCovariantJet A 2 t s / 2 - actualLogColumnSource A t s / 16 := by
  rw [actual_twice_covariant_mixed_fourth A hA, actualLogMixedDensity_mixed_derivative A hA]
  unfold actualCovariantJet actualLogFourthKernel actualLogColumnSource
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualCovariantKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ae989985424bde57c0b64a1898f0ea74dfee7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
