# compensatedJointWork_eq_retained_add_lowerStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7747779-3e75-5917-7a24-4648b7420d2a",
  "kind": "theorem",
  "lexical_name": "compensatedJointWork_eq_retained_add_lowerStrip",
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
  "slug": "compensatedjointwork-eq-retained-add-lowerstrip--f885ba41781766876bed32ab",
  "source": {
    "blob": "82a2955d04544305b91285e80e1565db840b103e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f885ba41781766876bed32ab4d9bb32422e1263a4a931d285e44234835c29dde",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7747779-3e75-5917-7a24-4648b7420d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedJointWork_eq_retained_add_lowerStrip {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    compensatedJointWork A =
      actualRetainedCompensationRemainder A w + actualLowerStripInterior A 0 w := by
  have hW := jointMangoldtErrorWork_eq_actual_double_adjoint (by linarith : 1 ≤ A)
  have hI := actualAdjointInterior_eq_lower_add_upper hA hw
  unfold compensatedJointWork actualRetainedCompensationRemainder
  rw [hW, hI]
  simp only [actualTimeLower]
  ring

/-- Removing the fixed actual lower strip costs its proved source-specific uniform budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a2955d04544305b91285e80e1565db840b103e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
