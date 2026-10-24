# concrete_dyadic_requiredCapacity_sandwich

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f52cac6f-82ce-4d6a-9264-6bee1d273f57",
  "kind": "theorem",
  "lexical_name": "concrete_dyadic_requiredCapacity_sandwich",
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
  "slug": "concrete-dyadic-requiredcapacity-sandwich--946d69dadc152eab2ccf6da6",
  "source": {
    "blob": "30635376ff2ceda7cb02fda322be89aac999d669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:946d69dadc152eab2ccf6da6c2c1d936e84a402b77f56f8b585b3aa71f9dfde6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f52cac6f-82ce-4d6a-9264-6bee1d273f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_dyadic_requiredCapacity_sandwich
    (j : ℕ) {B : ℝ} (hB : 0 < B)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (v E : ℝ) :
    pinnedPrimeWeightEnvelopeMinorant
        (dyadicScale j) B v E ≤
      pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ∧
    pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ≤
      pinnedPrimeWeightBertrandMajorant
        (dyadicScale j) v E :=
  pinnedPrimeWeight_requiredCapacity_sandwich
    (dyadicScale_pos j) hB henvelope v E

/-- The dyadic Bertrand benchmark retains the exact cubic scale factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30635376ff2ceda7cb02fda322be89aac999d669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
