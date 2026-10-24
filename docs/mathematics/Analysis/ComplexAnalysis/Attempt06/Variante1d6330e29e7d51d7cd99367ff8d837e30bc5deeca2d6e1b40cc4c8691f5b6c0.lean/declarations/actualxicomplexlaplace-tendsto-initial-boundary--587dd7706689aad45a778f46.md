# actualXiComplexLaplace_tendsto_initial_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8856f01c-6ddd-6902-4bd4-92be2a758b38",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_tendsto_initial_boundary",
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
  "slug": "actualxicomplexlaplace-tendsto-initial-boundary--587dd7706689aad45a778f46",
  "source": {
    "blob": "a7da48439e505516d7089c69e59edb2f6480adb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 253,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:587dd7706689aad45a778f460a1ffcd45397367ccbbd2302ab0ade296cfeb03c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8856f01c-6ddd-6902-4bd4-92be2a758b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_tendsto_initial_boundary :
    Tendsto actualXiComplexLaplace (𝓝[{z : ℂ | 1 / 2 < z.re}] (1 / 2))
      (𝓝 (2 * actualXiSevenPoleValue)) := by
  have hr := actualXiLaplacePoleOneRegularization_analyticAt_half.continuousAt.tendsto
  rw [actualXiLaplacePoleOneRegularization_at_half] at hr
  apply (hr.mono_left nhdsWithin_le_nhds).congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact (actualXiComplexLaplace_eq_poleOneRegularization hz).symm

/-- A finite bound near the initial boundary does not assert critical-half-plane integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7da48439e505516d7089c69e59edb2f6480adb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
