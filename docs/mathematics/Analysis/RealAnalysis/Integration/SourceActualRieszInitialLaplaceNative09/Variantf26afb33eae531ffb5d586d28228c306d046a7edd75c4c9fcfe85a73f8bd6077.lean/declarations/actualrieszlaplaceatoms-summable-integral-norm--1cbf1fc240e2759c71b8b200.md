# actualRieszLaplaceAtoms_summable_integral_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c841203-50af-83d8-0d4a-0ebb0de7c34e",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtoms_summable_integral_norm",
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
  "slug": "actualrieszlaplaceatoms-summable-integral-norm--1cbf1fc240e2759c71b8b200",
  "source": {
    "blob": "b4dc5e9f4373a233442f95e7dce6c8d55c0532db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 282,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbf1fc240e2759c71b8b200be9c3a8b4b39426f5ad7c42c046c261f39656b1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c841203-50af-83d8-0d4a-0ebb0de7c34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtoms_summable_integral_norm {z : ℂ} (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ => ∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) := by
  have hsig : 1 < z.re + 1 / 2 := by linarith
  have hs := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s := ((z.re + 1 / 2 : ℝ) : ℂ)) (by simpa only [Complex.ofReal_re] using hsig)
  change Summable (LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ))
    ((z.re + 1 / 2 : ℝ) : ℂ)) at hs
  simp_rw [actualRieszLaplaceAtom_integral_norm (by linarith : 0 < z.re)]
  exact hs.norm.div_const _

/-- The actual closed inventory is the locally finite sum of every literal atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4dc5e9f4373a233442f95e7dce6c8d55c0532db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
