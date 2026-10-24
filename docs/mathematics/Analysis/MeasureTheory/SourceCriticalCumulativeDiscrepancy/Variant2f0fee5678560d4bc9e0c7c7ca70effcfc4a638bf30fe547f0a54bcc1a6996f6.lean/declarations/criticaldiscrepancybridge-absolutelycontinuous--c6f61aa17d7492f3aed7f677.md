# criticalDiscrepancyBridge_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd82c23b-4ed9-7165-8ad5-3fc5bf1885db",
  "kind": "theorem",
  "lexical_name": "criticalDiscrepancyBridge_absolutelyContinuous",
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
  "slug": "criticaldiscrepancybridge-absolutelycontinuous--c6f61aa17d7492f3aed7f677",
  "source": {
    "blob": "80d49f4db12e6332548c1c863319a29c4b29f123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f61aa17d7492f3aed7f6770d796fedbccde88ba79a6f2242422679590f2526",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd82c23b-4ed9-7165-8ad5-3fc5bf1885db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDiscrepancyBridge_absolutelyContinuous (A : ℝ) :
    AbsolutelyContinuousOnInterval (criticalDiscrepancyBridge A) 0 (2 * A) := by
  have hl : ContDiff ℝ 1 (fun u : ℝ =>
      (u / (2 * A)) * criticalDiscrepancyPrimitive (2 * A)) := by fun_prop
  exact (criticalDiscrepancyPrimitive_absolutelyContinuous (2 * A)).sub
    hl.contDiffOn.absolutelyContinuousOnInterval

/-- Its derivative retains the independent endpoint average almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d49f4db12e6332548c1c863319a29c4b29f123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
