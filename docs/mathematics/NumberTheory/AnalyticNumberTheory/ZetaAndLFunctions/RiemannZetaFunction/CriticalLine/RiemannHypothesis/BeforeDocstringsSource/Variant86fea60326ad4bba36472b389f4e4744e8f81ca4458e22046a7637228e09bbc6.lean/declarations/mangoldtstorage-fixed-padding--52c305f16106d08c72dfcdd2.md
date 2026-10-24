# mangoldtStorage_fixed_padding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f57a0042-1cb4-553a-2560-87bfabced127",
  "kind": "theorem",
  "lexical_name": "mangoldtStorage_fixed_padding",
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
  "slug": "mangoldtstorage-fixed-padding--52c305f16106d08c72dfcdd2",
  "source": {
    "blob": "28737883708fbbc57e0faeef0ae108665159aecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BeforeDocstringsSource/Variant86fea60326ad4bba36472b389f4e4744e8f81ca4458e22046a7637228e09bbc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52c305f16106d08c72dfcdd200f3b91408f714bd7f2cac1a5057830aef7ca52a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BeforeDocstringsSource/Variant86fea60326ad4bba36472b389f4e4744e8f81ca4458e22046a7637228e09bbc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57a0042-1cb4-553a-2560-87bfabced127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtStorage_fixed_padding {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    mangoldtStorageFixed N A = mangoldtStorage A +
      (mangoldtBaselineFixed N - mangoldtBaseline A) := by
  have h := closedPrimeMoment_eq_fixed hA N hN
  rw [closedPrimeMoment_eq_baseline_sub_storage hA,
    closedPrimeMomentFixed_eq_baseline_sub_storage hA N] at h
  linarith

/-- Hostile fixture: at the first literal inventory birth the closed moment vanishes,
while both independently defined accounts are strictly positive. The scale is positive,
but below the eventual RH consumer threshold; this is an endpoint guard, not a tail claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BeforeDocstringsSource/Variant86fea60326ad4bba36472b389f4e4744e8f81ca4458e22046a7637228e09bbc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BeforeDocstringsSource/Variant86fea60326ad4bba36472b389f4e4744e8f81ca4458e22046a7637228e09bbc6.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28737883708fbbc57e0faeef0ae108665159aecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
