# restrictedMixedSourceForm_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b31d527a-a974-a031-458b-b52496cc544e",
  "kind": "theorem",
  "lexical_name": "restrictedMixedSourceForm_abs_le_coefficient",
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
  "slug": "restrictedmixedsourceform-abs-le-coefficient--2c3b4b7d480133ddb3b1f317",
  "source": {
    "blob": "c93f85d047032d76443754753e957b3ab317f0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variante81f0c9b62bb76e5d9fc509d37ede0eff7578201a140881294419848823c22e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3b4b7d480133ddb3b1f317cd493438f79f13d4991ce8922a7e7bdec0f1d5e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variante81f0c9b62bb76e5d9fc509d37ede0eff7578201a140881294419848823c22e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31d527a-a974-a031-458b-b52496cc544e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictedMixedSourceForm_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedMixedSourceForm S A x y| ≤ 162826 / (7623 * A ^ 2) + 1 / 4 := by
  unfold restrictedMixedSourceForm
  calc
    _ ≤ |restrictedDerivativePairing S A x y| + |restrictedSourcePairing S A x y / 4| :=
      abs_add_le _ _
    _ = |restrictedDerivativePairing S A x y| + |restrictedSourcePairing S A x y| / 4 :=
      by rw [abs_div]; norm_num
    _ ≤ 162826 / (7623 * A ^ 2) + 1 / 4 :=
      add_le_add (restrictedDerivativePairing_abs_le_coefficient hA S x y)
        (div_le_div_of_nonneg_right (restrictedSourcePairing_abs_le_one hA S x y)
          (by norm_num))

/-- Any arithmetic scalar remains in the budget; a small kernel error does not remove it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variante81f0c9b62bb76e5d9fc509d37ede0eff7578201a140881294419848823c22e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variante81f0c9b62bb76e5d9fc509d37ede0eff7578201a140881294419848823c22e3.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93f85d047032d76443754753e957b3ab317f0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
