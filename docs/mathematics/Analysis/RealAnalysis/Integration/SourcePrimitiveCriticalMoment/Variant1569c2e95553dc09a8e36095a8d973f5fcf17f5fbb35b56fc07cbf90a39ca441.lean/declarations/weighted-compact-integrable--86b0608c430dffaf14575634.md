# weighted_compact_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd7ede7-efcb-4f14-fba9-0de7b8790e5e",
  "kind": "theorem",
  "lexical_name": "weighted_compact_integrable",
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
  "slug": "weighted-compact-integrable--86b0608c430dffaf14575634",
  "source": {
    "blob": "84e8e0dd50a2eaab31556854585a1553e3c8fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b0608c430dffaf1457563465a41feae5488812275393971011e58bcca4995e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd7ede7-efcb-4f14-fba9-0de7b8790e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_compact_integrable {b : ℝ → ℝ} (hb : Continuous b)
    (hs : HasCompactSupport b) (σ : ℝ) :
    Integrable (fun x : ℝ => Real.exp (σ * x) * b x) :=
  ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hb)
    .integrable_of_hasCompactSupport hs.mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e8e0dd50a2eaab31556854585a1553e3c8fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
