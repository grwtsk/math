# balancedFirstPrimePrimitive_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7efaf32f-2185-aba5-8ed4-d3185be13b44",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimePrimitive_absolutelyContinuous",
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
  "slug": "balancedfirstprimeprimitive-absolutelycontinuous--c5df1988522c431460ef0193",
  "source": {
    "blob": "9a4e77335db0d48c4d87088dd3673fb445dc6063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5df1988522c431460ef019326613cb6625d52c4f7c9bbb8ce88b5fbf769dfca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7efaf32f-2185-aba5-8ed4-d3185be13b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimePrimitive_absolutelyContinuous (T : ℝ) :
    AbsolutelyContinuousOnInterval balancedFirstPrimePrimitive (Real.log 7) T := by
  have hi := balancedFirstPrimeDensity_intervalIntegrable (Real.log 7) T
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

/-- Ordinary derivative recovery is almost everywhere, preserving all prime jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a4e77335db0d48c4d87088dd3673fb445dc6063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
