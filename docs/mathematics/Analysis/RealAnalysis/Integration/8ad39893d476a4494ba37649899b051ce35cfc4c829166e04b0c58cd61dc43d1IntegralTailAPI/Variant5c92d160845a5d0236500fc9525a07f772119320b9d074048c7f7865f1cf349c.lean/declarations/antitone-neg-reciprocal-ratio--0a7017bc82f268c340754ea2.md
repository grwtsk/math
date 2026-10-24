# antitone_neg_reciprocal_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a0baab0-2063-afea-9058-e1aa0d48bc4e",
  "kind": "theorem",
  "lexical_name": "antitone_neg_reciprocal_ratio",
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
  "slug": "antitone-neg-reciprocal-ratio--0a7017bc82f268c340754ea2",
  "source": {
    "blob": "0cb8fab5fa02c27b97b431595a927ce33eebc8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a7017bc82f268c340754ea2e029983895cfcf366110f23063ae3f632c2974e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a0baab0-2063-afea-9058-e1aa0d48bc4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antitone_neg_reciprocal_ratio {f F : ℝ → ℝ}
    (hf : ∀ t, 0 ≤ t → 0 < f t) (hF : ∀ t, 0 ≤ t → 0 < F t)
    (hanti : AntitoneOn (fun t => F t / f t) (Ici (0 : ℝ))) :
    AntitoneOn (fun t => -f t / F t) (Ici (0 : ℝ)) := by
  intro t ht u hu htu
  apply (div_le_div_iff₀ (hF u hu) (hF t ht)).mpr
  have h := (div_le_div_iff₀ (hf u hu) (hf t ht)).mp (hanti ht hu htu)
  nlinarith only [h]

#check intervalIntegral.integral_Ici_sub_Ici'
#check intervalIntegral.integral_hasDerivAt_right
#check MeasureTheory.setIntegral_pos_iff_support_of_nonneg_ae
#print axioms hasDerivAt_integralTail
#print axioms integralTail_positive
#print axioms antitone_neg_reciprocal_ratio

end
end ThetaTailRankTwoAPI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb8fab5fa02c27b97b431595a927ce33eebc8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
