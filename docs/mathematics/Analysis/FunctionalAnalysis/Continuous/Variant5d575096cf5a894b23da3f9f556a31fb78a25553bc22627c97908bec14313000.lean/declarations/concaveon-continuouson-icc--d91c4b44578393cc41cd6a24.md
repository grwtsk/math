# ConcaveOn.continuousOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10306e1a-6fe6-7607-74f3-a2dfda4c162f",
  "kind": "lemma",
  "lexical_name": "ConcaveOn.continuousOn_Icc",
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
  "slug": "concaveon-continuouson-icc--d91c4b44578393cc41cd6a24",
  "source": {
    "blob": "e436ad9b2677486583a0924486a1323593bea052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 346,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91c4b44578393cc41cd6a24ec3c2969cc2a40e3b311864d9cec56edf7530ed3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10306e1a-6fe6-7607-74f3-a2dfda4c162f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConcaveOn.continuousOn_Icc {f : ℝ → ℝ} {y z : ℝ} (hf_cnv : ConcaveOn ℝ (Icc y z) f)
    (hyz : y < z)
    (hfy : ContinuousWithinAt f (Ici y) y) (hfz : ContinuousWithinAt f (Iic z) z) :
    ContinuousOn f (Icc y z) := by
  simpa using hf_cnv.neg.continuousOn_Icc hyz hfy.neg hfz.neg

end Intervals
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e436ad9b2677486583a0924486a1323593bea052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
