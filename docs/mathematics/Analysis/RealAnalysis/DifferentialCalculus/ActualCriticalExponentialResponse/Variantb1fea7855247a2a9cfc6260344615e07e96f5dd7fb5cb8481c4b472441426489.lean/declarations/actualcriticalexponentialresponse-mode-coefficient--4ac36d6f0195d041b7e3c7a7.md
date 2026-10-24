# actualCriticalExponentialResponse_mode_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb6aba86-4818-a3d3-3d5b-ba0d7e17cd44",
  "kind": "theorem",
  "lexical_name": "actualCriticalExponentialResponse_mode_coefficient",
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
  "slug": "actualcriticalexponentialresponse-mode-coefficient--4ac36d6f0195d041b7e3c7a7",
  "source": {
    "blob": "a18d9db282d99d209ee37d57e7591e723ff06586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac36d6f0195d041b7e3c7a75bb5b0d58ec34655b086aa78f5fc1c8ee64b7358",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6aba86-4818-a3d3-3d5b-ba0d7e17cd44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalExponentialResponse_mode_coefficient {A : ℝ} (hA : 0 < A)
    (rho m : ℂ) (hrho : rho ≠ 1) :
    (-m / (rho - 1)) *
      (actualCriticalExponentialResponse A (rho - 1 / 2) + 1 / 2) =
        m / 2 * actualHalfCorrelationTransform A (rho - 1 / 2) := by
  rw [actualCriticalExponentialResponse_eq_halfTransform hA]
  have hn : rho - 1 ≠ 0 := sub_ne_zero.mpr hrho
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.ActualCriticalExponentialResponse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18d9db282d99d209ee37d57e7591e723ff06586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
