# circleIntegrable_logCounting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c82a23cf-ae4b-1c83-4400-e7b68b0ad011",
  "kind": "theorem",
  "lexical_name": "circleIntegrable_logCounting",
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
  "slug": "circleintegrable-logcounting--a0e78a18c927c8a014c20ed6",
  "source": {
    "blob": "36ee2a1730aa25f0640153e8a4b6e7c917b7b412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 158,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e78a18c927c8a014c20ed6c2d66ed872811b1a7a4e39e9ce60cd0fb2b703c3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82a23cf-ae4b-1c83-4400-e7b68b0ad011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegrable_logCounting (h : Meromorphic f) :
    CircleIntegrable (logCounting f · R) 0 1 := by
  by_cases hR : R = 0
  · simp [hR, ValueDistribution.logCounting_eval_zero]
  convert circleIntegrable_circleAverage_log_norm_sub h |>.add
    (circleIntegrable_const (logCounting f ⊤ R) 0 1) |>.sub
    circleIntegrable_log_meromorphicTrailingCoeffAt
  simpa using eq_sub_of_add_eq
    (logCounting_add_log_trailingCoeff_eq_circleAverage_add_logCounting_top h hR _)

/-!
## Cartan's formula
-/

/--
**Cartan's formula** with the additive constant written explicitly as a circle average of the
logarithm of the first nonzero Laurent coefficient of `f - a` at the origin.

See `circleIntegrable_logCounting` and `circleIntegrable_log_meromorphicTrailingCoeffAt` for the
facts that the summands are actually circle integrable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ee2a1730aa25f0640153e8a4b6e7c917b7b412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
