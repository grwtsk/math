# actualComplementCriticalRelative_sub_main_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9714150a-e8ac-dd75-5e21-d808b1b0f75a",
  "kind": "theorem",
  "lexical_name": "actualComplementCriticalRelative_sub_main_abs_le",
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
  "slug": "actualcomplementcriticalrelative-sub-main-abs-le--7368775517c7c4cd8d23777b",
  "source": {
    "blob": "51cc2ae87c647ddaf6e9cb57c7c5fe51003316e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7368775517c7c4cd8d23777b45c476e7cb6b31c7df7815de311f4caa83a4775b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9714150a-e8ac-dd75-5e21-d808b1b0f75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementCriticalRelative_sub_main_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualComplementCriticalRelativePairing A - actualComplementCriticalRelativeMain A| ≤
      10 * (3 * Real.log 4 + 11) * (Real.log A) ^ 2 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actualResidual_eq_short_add_long hA1
  have hj := mertensResidual_eq_criticalRelative_add_baseline hA1
  have hs := actualCriticalRelative_eq_near_add_complement hA
  have he : actualComplementCriticalRelativePairing A - actualComplementCriticalRelativeMain A =
      (actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)) -
        (actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A) := by
    unfold actualComplementCriticalRelativeMain actualNearCriticalRelativeMain
    linarith only [hr, hj, hs]
  rw [he]
  calc
    _ ≤ |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| +
        |actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A| := abs_sub _ _
    _ ≤ 20 * (Real.log 4 + 4) * (Real.log A) ^ 2 / A +
        10 * (Real.log 4 + 3) * (Real.log A) ^ 2 / A :=
      add_le_add (actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le hA)
        (actualNearCriticalRelative_sub_main_abs_le hA)
    _ = _ := by ring

/-- This closed-boundary substitution error tends to zero before normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51cc2ae87c647ddaf6e9cb57c7c5fe51003316e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
