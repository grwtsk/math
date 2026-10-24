# exactWeightBudget_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aed3ec1-e344-2790-724b-eb2643456b9f",
  "kind": "theorem",
  "lexical_name": "exactWeightBudget_nonneg",
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
  "slug": "exactweightbudget-nonneg--632eb8ad90f0e0379b153679",
  "source": {
    "blob": "c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:632eb8ad90f0e0379b15367993e9b5cfdd806b8d3a596d135a82be172a774f7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aed3ec1-e344-2790-724b-eb2643456b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactWeightBudget_nonneg (Q A : ℝ) (hA : 0 < A) :
    0 ≤ exactWeightBudget Q A := by
  have he := (tailEnergyCoefficient_pos Q).le
  unfold exactWeightBudget
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
