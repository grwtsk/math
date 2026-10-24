# kernelMass_le_absoluteFactorMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9759b5b-4f7f-272c-0e95-34bc0e369c7a",
  "kind": "theorem",
  "lexical_name": "kernelMass_le_absoluteFactorMass",
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
  "slug": "kernelmass-le-absolutefactormass--e5b7e01bea771ee87094b14f",
  "source": {
    "blob": "ecae37d317874c621af5490e08165cd39b136eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b7e01bea771ee87094b14f6e0b9f17a0e17016c905380ff3a6e5d39e85eda3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9759b5b-4f7f-272c-0e95-34bc0e369c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelMass_le_absoluteFactorMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    stage.toKernelStage.kernelMass v ≤
      stage.absoluteFactorMass v := by
  unfold PrimeThetaQuadraticKernelStage.kernelMass
    absoluteFactorMass toKernelStage
  apply Finset.sum_le_sum
  intro p hp
  apply Finset.sum_le_sum
  intro q hq
  exact stage.abs_inducedKernel_le_factorTerms v p q

end PrimeThetaSeparableKernelStage

/-- Factor-level source criterion.  It retains the same source majorization and
residual obligations as the prime-kernel criterion, but replaces the raw
kernel-mass estimate by a bound on the complete finite factor budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecae37d317874c621af5490e08165cd39b136eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
