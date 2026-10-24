# actualMoebiusSqrtMass_lower_at_source_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49bbded-0cf4-fcd2-09b6-cda594eb2bc5",
  "kind": "theorem",
  "lexical_name": "actualMoebiusSqrtMass_lower_at_source_cutoff",
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
  "slug": "actualmoebiussqrtmass-lower-at-source-cutoff--55c407beb228a4e95c0cb7df",
  "source": {
    "blob": "09259c6b072cf8f5b1fed6a9a991f542346f6190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55c407beb228a4e95c0cb7dfed8ec44739781cbb425091e7949ae07827cc1af0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49bbded-0cf4-fcd2-09b6-cda594eb2bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMoebiusSqrtMass_lower_at_source_cutoff {A : ℝ} (hA : 25600 ≤ A) :
    (11 / 18 : ℝ) * (Real.sqrt (vaughanCutoff A : ℝ) - 1) ≤
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ) := by
  have hf : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) := (Nat.sub_one_lt_floor (A ^ 2)).le
  have hU : 36 ≤ vaughanCutoff A := by
    exact_mod_cast (show (36 : ℝ) ≤ (vaughanCutoff A : ℝ) by nlinarith)
  exact actualMoebiusSqrtMass_lower hU

/-- The unsigned replacement of the genuine leading term, joined to the actual early head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09259c6b072cf8f5b1fed6a9a991f542346f6190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
