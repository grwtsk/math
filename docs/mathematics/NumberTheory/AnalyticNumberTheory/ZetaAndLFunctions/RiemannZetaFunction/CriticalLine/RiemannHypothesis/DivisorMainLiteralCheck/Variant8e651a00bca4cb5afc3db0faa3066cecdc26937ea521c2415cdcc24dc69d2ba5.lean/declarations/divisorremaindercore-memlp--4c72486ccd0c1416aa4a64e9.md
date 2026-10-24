# divisorRemainderCore_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb561c6-0c3a-12ab-1658-23f39cbadeaf",
  "kind": "theorem",
  "lexical_name": "divisorRemainderCore_memLp",
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
  "slug": "divisorremaindercore-memlp--4c72486ccd0c1416aa4a64e9",
  "source": {
    "blob": "0a0c3958f09d3ddc83cdb0ec7f1476c5d25b5b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c72486ccd0c1416aa4a64e90166bcde90f80c1edb5d4e000d70a10cca4191ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb561c6-0c3a-12ab-1658-23f39cbadeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorRemainderCore_memLp (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorRemainderCore ε Y) 2 volume := by
  apply (memLp_two_iff_integrable_sq_norm
    (divisorRemainderCore_measurable ε Y).aestronglyMeasurable).mpr
  apply (remainderMajorant_integrable ε Y).mono'
    ((divisorRemainderCore_measurable ε Y).norm.pow_const 2).aestronglyMeasurable
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  exact divisorRemainderCore_sq_le ε hε Y hY u

/-- The genuine full-line L2 vector represented by the original cut divisor-prefix remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0c3958f09d3ddc83cdb0ec7f1476c5d25b5b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
