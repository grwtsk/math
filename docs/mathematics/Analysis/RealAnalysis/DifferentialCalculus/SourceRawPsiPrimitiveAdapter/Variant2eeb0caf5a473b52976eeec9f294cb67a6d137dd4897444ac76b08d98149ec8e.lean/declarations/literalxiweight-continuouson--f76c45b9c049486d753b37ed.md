# literalXiWeight_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3d808a6-e661-5bb5-66c7-a5e481fae79e",
  "kind": "theorem",
  "lexical_name": "literalXiWeight_continuousOn",
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
  "slug": "literalxiweight-continuouson--f76c45b9c049486d753b37ed",
  "source": {
    "blob": "e669f5308458bcb1c8bbb7b003ba624f3c99d394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f76c45b9c049486d753b37ed8ea080568abffc95f3e4a7f1cd761608d7d412a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d808a6-e661-5bb5-66c7-a5e481fae79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literalXiWeight_continuousOn (t X : ℝ) :
    ContinuousOn (literalXiWeight t) (Icc 2 X) := by
  intro y hy
  have hp : 0 < y := by linarith [hy.1]
  unfold literalXiWeight
  exact ((continuousAt_const.div (continuousAt_id.pow 2) (pow_ne_zero 2 hp.ne')).sub
    (((continuousAt_const.sub (Real.continuousAt_log hp.ne')).add continuousAt_const).div
      (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne')).continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e669f5308458bcb1c8bbb7b003ba624f3c99d394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
