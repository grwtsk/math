# actualResidual_movingHead_two_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d69b6d2-5d8f-b857-2892-52416a94cff3",
  "kind": "theorem",
  "lexical_name": "actualResidual_movingHead_two_sided",
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
  "slug": "actualresidual-movinghead-two-sided--efa434862684873b25cbbc42",
  "source": {
    "blob": "5140ab91e1bf4fc979b6878cd06a712af2ad1b9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variant090b6edaff2bf32e79192e8d21b8163782dd77c68e5ed8d41654d2e9c8c6f85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa434862684873b25cbbc423f86f663f2933004c78af3293bf1cce34ab6f45c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variant090b6edaff2bf32e79192e8d21b8163782dd77c68e5ed8d41654d2e9c8c6f85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d69b6d2-5d8f-b857-2892-52416a94cff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_movingHead_two_sided :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 -
        actualZeroMovingEnvelope A0 c A / 2 ≤ mertensResidual A ∧
      mertensResidual A ≤
        (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 +
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroMovingTail_norm_bound
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have heq := actualResidual_sub_signedHead_eq hA1 (actualBumpMovingHeight A c)
  have ha := actual_archimedean_two_sided hA1
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualBumpMovingHeight A c))).trans (hbound c A hc hA)
  have hb := abs_le.mp ht
  constructor
  · linarith [ha.1, hb.2]
  · have he : (18 * (162826 / 7623 : ℝ)) / (2 * A^2) =
        ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
    rw [he]
    linarith [ha.2, hb.1]

/-- The signed source reduction has a genuine quantitative absolute correction bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variant090b6edaff2bf32e79192e8d21b8163782dd77c68e5ed8d41654d2e9c8c6f85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variant090b6edaff2bf32e79192e8d21b8163782dd77c68e5ed8d41654d2e9c8c6f85b.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5140ab91e1bf4fc979b6878cd06a712af2ad1b9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
