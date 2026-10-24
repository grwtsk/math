# target_le_response_add_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:868df412-0bdc-bc12-167d-b0d698d83629",
  "kind": "theorem",
  "lexical_name": "target_le_response_add_residual",
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
  "slug": "target-le-response-add-residual--76f846f7611b5f2a7093c40f",
  "source": {
    "blob": "9102da31aa4c46d069e457878bac7e738ad6f353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f846f7611b5f2a7093c40f146b4ce5f15b2ea12b496b2413db51a28ed50cd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868df412-0bdc-bc12-167d-b0d698d83629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem target_le_response_add_residual
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {v : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |thetaError v| + 1 ≤
      |rule.response j v| / (dyadicScale j : ℝ) +
        (|rule.signedResidual j v| + 1) := by
  have hX : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  calc
    |thetaError v| + 1 =
        |rule.response j v / (dyadicScale j : ℝ) +
            rule.signedResidual j v| + 1 := by
      rw [rule.exactIdentity j v hv]
    _ ≤
        (|rule.response j v / (dyadicScale j : ℝ)| +
          |rule.signedResidual j v|) + 1 := by
      exact add_le_add (abs_add_le _ _) le_rfl
    _ =
        |rule.response j v| / (dyadicScale j : ℝ) +
          (|rule.signedResidual j v| + 1) := by
      rw [abs_div, abs_of_pos hX]
      ring

/-- A quadratic response bound and a complete residual allowance imply the
pointwise pinned amplitude requirement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9102da31aa4c46d069e457878bac7e738ad6f353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
