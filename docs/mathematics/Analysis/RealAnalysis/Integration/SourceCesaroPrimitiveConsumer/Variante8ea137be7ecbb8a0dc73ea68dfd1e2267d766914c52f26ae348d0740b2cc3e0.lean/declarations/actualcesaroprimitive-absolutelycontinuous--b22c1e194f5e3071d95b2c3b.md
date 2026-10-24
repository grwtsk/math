# actualCesaroPrimitive_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ed532a-2ecc-5276-fc77-288512ab8830",
  "kind": "theorem",
  "lexical_name": "actualCesaroPrimitive_absolutelyContinuous",
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
  "slug": "actualcesaroprimitive-absolutelycontinuous--b22c1e194f5e3071d95b2c3b",
  "source": {
    "blob": "43b081b85ad204f2e218ed41f8401ebce6e57d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22c1e194f5e3071d95b2c3b100d79cefa3dd4ffb377d673a5d4638ebb3e7a9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ed532a-2ecc-5276-fc77-288512ab8830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCesaroPrimitive_absolutelyContinuous (A : ℝ) (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval actualCesaroPrimitive (Real.log 2) (2 * A) := by
  have hi : IntervalIntegrable centeredCriticalPrimitive volume (Real.log 2) (2 * A) :=
    (centeredCriticalPrimitive_absolutelyContinuous A hA).continuousOn.intervalIntegrable
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variante8ea137be7ecbb8a0dc73ea68dfd1e2267d766914c52f26ae348d0740b2cc3e0.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b081b85ad204f2e218ed41f8401ebce6e57d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
