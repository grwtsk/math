# finite_partial_zeta_sum_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bacbcd7f-d86e-07c8-7f94-4488f2b814b7",
  "kind": "theorem",
  "lexical_name": "finite_partial_zeta_sum_nonnegative",
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
  "slug": "finite-partial-zeta-sum-nonnegative--89524f00161d765cec3798d5",
  "source": {
    "blob": "f27bcfbe518f61b6464b13572f091f87ffc2708b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89524f00161d765cec3798d565ff8ed8b0c90b718a41f5d22bf08f9e4eba67af",
  "verification": {
    "reference": "docs/verification/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bacbcd7f-d86e-07c8-7f94-4488f2b814b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_partial_zeta_sum_nonnegative
    (σ : ℝ)
    (N : Nat) :
    0 ≤
      ∑ n ∈ Finset.Icc 1 N,
        (if n = 0 then 0 else (n : ℝ) ^ (-σ)) := by
  refine Finset.sum_nonneg ?_
  intro n _hn
  by_cases hn0 : n = 0
  · simp [hn0]
  · simp [hn0, Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ n) (-σ)]

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f27bcfbe518f61b6464b13572f091f87ffc2708b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
