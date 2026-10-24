# actualLogSource_mellin_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e25044c6-8e1b-1da9-11d2-977b84bf6bf5",
  "kind": "theorem",
  "lexical_name": "actualLogSource_mellin_integrable",
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
  "slug": "actuallogsource-mellin-integrable--1d50833e1564c7ab8ca2a506",
  "source": {
    "blob": "f3be0f210be8f9804366ed3dbf6773fba114ec98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d50833e1564c7ab8ca2a5061c8c98ba5714b4ac0da739bc79bbb7c2a4087194",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25044c6-8e1b-1da9-11d2-977b84bf6bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogSource_mellin_integrable {A : ℝ} (hA : 0 < A) (s : ℂ) :
    IntegrableOn (fun x : ℝ => (x:ℂ)^(s-1)*(actualLogSource A x : ℂ)) (Ioi 0) := by
  apply (lift_mellin_integrable_iff _ s).2
  have hc := (Complex.continuous_ofReal.comp (normalizedTest_contDiff A hA).continuous).mul
    (show Continuous (fun t : ℝ => Complex.exp ((s-1/2)*(t:ℂ))) by fun_prop)
  exact hc.integrable_of_hasCompactSupport
    ((normalizedTest_hasCompactSupport A hA).comp_left (by simp)).mul_right

/-- The source's positive-sign angular Fourier convention is preserved without conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3be0f210be8f9804366ed3dbf6773fba114ec98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
