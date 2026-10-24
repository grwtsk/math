# restrictedMixedSourceForm_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eebfce27-5afc-6d64-3a6c-704e404b0de9",
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
  "slug": "restrictedmixedsourceform-abs-le-coefficient--c8747151044514159a31364b",
  "source": {
    "blob": "386596339e22dde25a4bf76de2a87052f56857a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variant47335f667b45f697e6528657df6308ee8efa990c9feaab85b5d1e56453336b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8747151044514159a31364b92f292d7f2c793cb26096189e443591c2e51ab29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variant47335f667b45f697e6528657df6308ee8efa990c9feaab85b5d1e56453336b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eebfce27-5afc-6d64-3a6c-704e404b0de9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–148.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variant47335f667b45f697e6528657df6308ee8efa990c9feaab85b5d1e56453336b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variant47335f667b45f697e6528657df6308ee8efa990c9feaab85b5d1e56453336b17.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386596339e22dde25a4bf76de2a87052f56857a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
