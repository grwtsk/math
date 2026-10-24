# actualRieszLaplaceAtoms_summable_integral_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dab361cf-d426-fa8a-97b9-e0028d7c15d6",
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
  "slug": "actualrieszlaplaceatoms-summable-integral-norm--f962d8b4553c739c81ab41fd",
  "source": {
    "blob": "5bb12594f4f4b8b883da3f949224c56579be566f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f962d8b4553c739c81ab41fdcddafd8ec15101471c290d0b264010e2cc807348",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab361cf-d426-fa8a-97b9-e0028d7c15d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–291.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb12594f4f4b8b883da3f949224c56579be566f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
