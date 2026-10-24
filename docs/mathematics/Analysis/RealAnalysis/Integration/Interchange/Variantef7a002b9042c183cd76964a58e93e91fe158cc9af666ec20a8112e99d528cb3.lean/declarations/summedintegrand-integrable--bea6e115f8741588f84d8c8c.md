# summedIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c13eaa68-f50b-7cda-dcf9-da0e4ec5cb52",
  "kind": "lemma",
  "lexical_name": "summedIntegrand_integrable",
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
  "slug": "summedintegrand-integrable--bea6e115f8741588f84d8c8c",
  "source": {
    "blob": "b9c7ca8005a13569810f8fc7ed1c9b3fe5372054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bea6e115f8741588f84d8c8c81c877c4556e93272b03c5cbf5e0dd08307a4807",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13eaa68-f50b-7cda-dcf9-da0e4ec5cb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summedIntegrand_integrable (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ ∑' o : ZeroOccurrence, occurrenceIntegrand s o A) (Ioi 1) := by
  constructor
  · have hm : ∀ o : ZeroOccurrence, AEStronglyMeasurable (occurrenceIntegrand s o)
        (volume.restrict (Ioi 1)) := fun o ↦ (occurrenceIntegrand_integrable s hs o).1
    fun_prop
  · rw [hasFiniteIntegral_iff_enorm]
    apply lt_of_le_of_lt (lintegral_mono (fun A ↦ enorm_tsum_le_tsum_enorm))
    rw [lintegral_tsum (fun o ↦ (occurrenceIntegrand_integrable s hs o).1.enorm)]
    exact lt_top_iff_ne_top.mpr (integrals_enorm_ne_top s hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9c7ca8005a13569810f8fc7ed1c9b3fe5372054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
