# actual_zeta_half_re_le_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25854292-d643-ab5e-ca12-b74b990b69af",
  "kind": "theorem",
  "lexical_name": "actual_zeta_half_re_le_neg_one",
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
  "slug": "actual-zeta-half-re-le-neg-one--90200c656f5cdf8e87e6f071",
  "source": {
    "blob": "d896bfc3c3ad34c810a9d80811b1f9ecec83ad6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74f41ccfe7a3aa81ActualCriticalOrdinateBudget/Varianta4f788e9c00e76cafcaf38136e4a1872b830ae84a28c74f0d2209742f461e163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90200c656f5cdf8e87e6f071359917ac0c13743a934247bfa83e93e23e685e0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74f41ccfe7a3aa81ActualCriticalOrdinateBudget/Varianta4f788e9c00e76cafcaf38136e4a1872b830ae84a28c74f0d2209742f461e163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25854292-d643-ab5e-ca12-b74b990b69af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_zeta_half_re_le_neg_one :
    (riemannZeta (1 / 2 : ℂ)).re ≤ -1 := by
  linarith only [earlyFractionalConstant_bounds.1,
    earlyFractionalConstant_add_zeta_half_eq_zero]

/-- No eta identification is presumed: this follows from the source-backed Euler identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74f41ccfe7a3aa81ActualCriticalOrdinateBudget/Varianta4f788e9c00e76cafcaf38136e4a1872b830ae84a28c74f0d2209742f461e163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74f41ccfe7a3aa81ActualCriticalOrdinateBudget/Varianta4f788e9c00e76cafcaf38136e4a1872b830ae84a28c74f0d2209742f461e163.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d896bfc3c3ad34c810a9d80811b1f9ecec83ad6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
