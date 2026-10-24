# cumulativeSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e68f9886443fa9049ff05062866415ca256600635cabbe7e4035d8ba62659515",
  "kind": "def",
  "lexical_name": "cumulativeSum",
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
  "slug": "cumulativesum--dbaadefec0cbf235fd4a67b8",
  "source": {
    "blob": "0d86e653cef56a5832ce2413cd13b8935f2d128d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbaadefec0cbf235fd4a67b87a2184bbfb140f9b0c1b9bd10ce21e2106daa97e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e68f9886443fa9049ff05062866415ca256600635cabbe7e4035d8ba62659515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cumulativeSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, a i

/-- The terminal value is kept. In a compact-support application it may vanish
only after proving the actual endpoint statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8e10e29d6b6d2a01576d70f8c7cdb3a6ec67661224c13bbfa030bb7a36161e3cAudit/Variant2d2cda379c6b2bd0654676be46f643cd30972a193f50b58d67a6e32621f3faef.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d86e653cef56a5832ce2413cd13b8935f2d128d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
