# conductorThreePrimeCharacterSum_real_eq_countDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b9c4bfc-83dd-eb5e-811b-4eefe24d15dc",
  "kind": "theorem",
  "lexical_name": "conductorThreePrimeCharacterSum_real_eq_countDifference",
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
  "slug": "conductorthreeprimecharactersum-real-eq-countdifference--d4482f176fa04d510a187848",
  "source": {
    "blob": "303de9690965476f743375042031b28375645ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4482f176fa04d510a1878482f3cf01719b9a12af4f4553c20a2ed49720aa27b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b9c4bfc-83dd-eb5e-811b-4eefe24d15dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreePrimeCharacterSum_real_eq_countDifference (x : ℕ) :
    (conductorThreePrimeCharacterSum x : ℝ) =
      countDifference actualResidueSixCounts x -
        (if 2 ≤ x then 1 else 0) := by
  have h := congrArg (fun z : ℤ ↦ (z : ℝ))
    (conductorThreePrimeCharacterSum_eq_residueDifference x)
  simp only [Int.cast_sub] at h
  simpa [actualResidueDifferenceInt, countDifference,
    actualResidueSixCounts] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303de9690965476f743375042031b28375645ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
