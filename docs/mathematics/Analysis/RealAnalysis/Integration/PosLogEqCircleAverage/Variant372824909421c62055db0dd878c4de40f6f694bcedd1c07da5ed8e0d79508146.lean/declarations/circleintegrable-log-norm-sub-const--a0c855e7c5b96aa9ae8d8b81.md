# circleIntegrable_log_norm_sub_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:135fd5cb-589b-0250-08b8-96c9667fb9a7",
  "kind": "lemma",
  "lexical_name": "circleIntegrable_log_norm_sub_const",
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
  "slug": "circleintegrable-log-norm-sub-const--a0c855e7c5b96aa9ae8d8b81",
  "source": {
    "blob": "b1610cab7511e15ff2302a8b211d6c730dc32200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant372824909421c62055db0dd878c4de40f6f694bcedd1c07da5ed8e0d79508146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c855e7c5b96aa9ae8d8b8109d4ca95d88bd4c49cc52ae0140e7c4a6f593281",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant372824909421c62055db0dd878c4de40f6f694bcedd1c07da5ed8e0d79508146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:135fd5cb-589b-0250-08b8-96c9667fb9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma circleIntegrable_log_norm_sub_const (r : ℝ) : CircleIntegrable (log ‖· - a‖) c r :=
  MeromorphicOn.circleIntegrable_log_norm (fun z hz ↦ by fun_prop)

/-!
## Computing `circleAverage (log ‖· - a‖) 0 1` in case where `‖a‖ < 1`.
-/

/--
If `a : ℂ` has norm smaller than one, then `circleAverage (log ‖· - a‖) 0 1` vanishes.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant372824909421c62055db0dd878c4de40f6f694bcedd1c07da5ed8e0d79508146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant372824909421c62055db0dd878c4de40f6f694bcedd1c07da5ed8e0d79508146.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1610cab7511e15ff2302a8b211d6c730dc32200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
