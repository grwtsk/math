# complete_schedule_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de65da0b-6311-c596-5ef5-d3f85eea7739",
  "kind": "theorem",
  "lexical_name": "complete_schedule_sum",
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
  "slug": "complete-schedule-sum--eac0fd6d9b29ce5e38e5cbae",
  "source": {
    "blob": "f087e18f7d99ddaebe25f08ea63ecd8f03a30bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 24,
    "path": "GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eac0fd6d9b29ce5e38e5cbaec87269c9340da9303a8cc393d9f56b051ab645e5",
  "verification": {
    "reference": "docs/verification/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de65da0b-6311-c596-5ef5-d3f85eea7739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_schedule_sum {ι : Type*} [Fintype ι]
    (σ : Equiv.Perm ι) (work : ι → ℝ) :
    (∑ i, work (σ i)) = ∑ i, work i :=
  Fintype.sum_equiv σ (fun i => work (σ i)) work (fun _ => rfl)

/-- Fractional emphasis reconstructs every atom using exact column marginals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceSchedulingTransport/Variant65685b212c35d7230a333973d8a11ad23eac2905e9b1ae045cd248a5c70d7655.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f087e18f7d99ddaebe25f08ea63ecd8f03a30bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
