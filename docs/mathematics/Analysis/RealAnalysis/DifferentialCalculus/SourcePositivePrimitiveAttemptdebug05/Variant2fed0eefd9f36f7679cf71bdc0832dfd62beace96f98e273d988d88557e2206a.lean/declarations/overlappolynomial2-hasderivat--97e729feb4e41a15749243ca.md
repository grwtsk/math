# overlapPolynomial2_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09da4e5c-6b9d-732f-a0ec-803557941d2a",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial2_hasDerivAt",
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
  "slug": "overlappolynomial2-hasderivat--97e729feb4e41a15749243ca",
  "source": {
    "blob": "8c2a172adcd57b18976c85bd50680a9fedb053bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97e729feb4e41a15749243ca4c8ef7525c1d7498929be1dc01952d61cf79ea94",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09da4e5c-6b9d-732f-a0ec-803557941d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial2_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial2 (overlapPolynomial3 u) u := by
  have h := (((((((((hasDerivAt_const u ((-131072/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((98304/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((-8192/231:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((2048/45:ℝ):ℝ))).add (((hasDerivAt_id u).pow 7).const_mul ((-1024/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((256/63:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((-192/385:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((16/429:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((-8/6435:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial2,overlapPolynomial3,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptdebug05/Variant2fed0eefd9f36f7679cf71bdc0832dfd62beace96f98e273d988d88557e2206a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c2a172adcd57b18976c85bd50680a9fedb053bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
