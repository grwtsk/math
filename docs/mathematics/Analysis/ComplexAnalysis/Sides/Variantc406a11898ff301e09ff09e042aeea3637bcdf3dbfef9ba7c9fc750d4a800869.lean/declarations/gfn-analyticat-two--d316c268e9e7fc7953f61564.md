# Gfn_analyticAt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:835bc218-e636-d370-3cdb-a1ce55338627",
  "kind": "lemma",
  "lexical_name": "Gfn_analyticAt_two",
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
  "slug": "gfn-analyticat-two--d316c268e9e7fc7953f61564",
  "source": {
    "blob": "06759d8f9d559acee3bc52992d42d2435e60fc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d316c268e9e7fc7953f61564997860ebb591297903956b9fc2c96c1568f95264",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:835bc218-e636-d370-3cdb-a1ce55338627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gfn_analyticAt_two (t : ℝ) : AnalyticAt ℂ Gfn (2 + t * I) := by
  unfold Gfn
  exact (Lfn_analyticAt (by simp) (two_line_ne_one t)).add
    (logDeriv_zeta_analyticAt (two_line_ne_one t) (zeta_two_line_ne_zero t))

/-- logDeriv Y = logDeriv Pneg + logDeriv ζ + logDeriv G on the line Re s = 2 (where G ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06759d8f9d559acee3bc52992d42d2435e60fc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
