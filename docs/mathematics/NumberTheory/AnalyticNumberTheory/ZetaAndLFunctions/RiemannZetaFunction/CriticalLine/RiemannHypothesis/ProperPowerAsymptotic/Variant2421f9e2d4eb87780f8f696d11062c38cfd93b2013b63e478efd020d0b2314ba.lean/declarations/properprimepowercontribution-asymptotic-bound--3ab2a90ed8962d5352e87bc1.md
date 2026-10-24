# properPrimePowerContribution_asymptotic_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eed4d955-e846-4baf-bcda-0fd76ba4a7eb",
  "kind": "theorem",
  "lexical_name": "properPrimePowerContribution_asymptotic_bound",
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
  "slug": "properprimepowercontribution-asymptotic-bound--3ab2a90ed8962d5352e87bc1",
  "source": {
    "blob": "bde122be347ab09f8a7836333b37098c4b5916a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab2a90ed8962d5352e87bc1a30aa000b2dbd2202774956eb395f18844b28855",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed4d955-e846-4baf-bcda-0fd76ba4a7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPrimePowerContribution_asymptotic_bound (A : ℝ) (hA : 1 ≤ A) :
    |properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)| ≤
        properPowerBudget / A ^ 2 := by
  rw [properPrimePowerContribution_eq_main_add_error A hA]
  have he : (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
      properPowerError A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant) =
        properPowerError A := by ring
  rw [he]
  exact properPowerError_abs_le A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde122be347ab09f8a7836333b37098c4b5916a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
