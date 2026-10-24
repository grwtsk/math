# actualFactorialJointDensity_eq_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3f50494-b568-3e4a-58cc-1ca60f83fb3e",
  "kind": "theorem",
  "lexical_name": "actualFactorialJointDensity_eq_difference",
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
  "slug": "actualfactorialjointdensity-eq-difference--2fe333d2907dd93aafa63968",
  "source": {
    "blob": "d128a091939ddb4646844a56b1e79d376a693367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fe333d2907dd93aafa6396848c76f3f4f23770d81007a67e96a7c13d9155b67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f50494-b568-3e4a-58cc-1ca60f83fb3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualFactorialJointDensity_eq_difference (A : ℝ) :
    actualFactorialJointDensity A = fun x =>
      (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2) -
        (Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))).indicator
          (fun x => (factorialNondefectSector A x -
            shortFactorialDefect (vaughanCutoff A) x) * deriv (plainProfile A 1) x) x := by
  funext x
  unfold actualFactorialJointDensity
  by_cases hx : x ∈ Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))
  · rw [if_pos hx, indicator_of_mem hx]
    ring
  · rw [if_neg hx, indicator_of_notMem hx, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d128a091939ddb4646844a56b1e79d376a693367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
