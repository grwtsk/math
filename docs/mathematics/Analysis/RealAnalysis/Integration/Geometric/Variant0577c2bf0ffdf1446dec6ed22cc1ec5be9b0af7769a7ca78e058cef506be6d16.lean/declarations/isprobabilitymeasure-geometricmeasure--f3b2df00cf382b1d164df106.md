# isProbabilityMeasure_geometricMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c5c9980d390e745de3a4337f9e64d21cf235f05ca18727b47a41886e734b1bc",
  "kind": "instance",
  "lexical_name": "isProbabilityMeasure_geometricMeasure",
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
  "slug": "isprobabilitymeasure-geometricmeasure--f3b2df00cf382b1d164df106",
  "source": {
    "blob": "50d5b65064db0e278f4076f0ecbac12cd894d339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3b2df00cf382b1d164df1065c42953a300f90a60b0335e981262ec6d4bb0b70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c5c9980d390e745de3a4337f9e64d21cf235f05ca18727b47a41886e734b1bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isProbabilityMeasure_geometricMeasure :
    IsProbabilityMeasure (geometricMeasure p) := by
  rw [geometricMeasure]
  split_ifs with h
  · exact (hasSum_one_geometricMeasure h).isProbabilityMeasure_sum_dirac
      (geometricMeasure_nonneg p)
  · infer_instance

section Integral

variable {E : Type*} [NormedAddCommGroup E] {f : ℕ → E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d5b65064db0e278f4076f0ecbac12cd894d339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
