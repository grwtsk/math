# rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9034fea0-b671-f783-f998-3189d11db0a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b03dcfd-9f7b-1722-ccf0-f3ff286c2f48",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn",
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
  "slug": "rectangleboundaryintegral-eq-innerrectangle-of-continuouson--b71b2870f8401cc362ae4877",
  "source": {
    "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b71b2870f8401cc362ae487765788fcc5abf8bacf72eb01b858c5f96404b098a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b03dcfd-9f7b-1722-ccf0-f3ff286c2f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottomC : ContinuousOn f
      (closedRectangle (corner a p) (corner d q)))
    (hTopC : ContinuousOn f
      (closedRectangle (corner a r) (corner d s)))
    (hLeftC : ContinuousOn f
      (closedRectangle (corner a q) (corner b r)))
    (hRightC : ContinuousOn f
      (closedRectangle (corner c q) (corner d r)))
    (hBottomD : DifferentiableOn ℂ f (Set.Ioo a d ×ℂ Set.Ioo p q))
    (hTopD : DifferentiableOn ℂ f (Set.Ioo a d ×ℂ Set.Ioo r s))
    (hLeftD : DifferentiableOn ℂ f (Set.Ioo a b ×ℂ Set.Ioo q r))
    (hRightD : DifferentiableOn ℂ f (Set.Ioo c d ×ℂ Set.Ioo q r)) :
    rectangleBoundaryIntegral f (corner a p) (corner d s) =
      rectangleBoundaryIntegral f (corner b q) (corner c r) := by
  have had : a ≤ d := hab.trans (hbc.trans hcd)
  have hsum := four_rectangles_boundary_sum f hab hbc hcd hpq hqr hrs
    hBottomC hTopC hLeftC hRightC
  simp only [boundary_eq_rectangleBoundaryIntegral] at hsum
  have hBottomZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a p) (corner d q) hBottomC (by
        simpa [corner, min_eq_left had, max_eq_right had,
          min_eq_left hpq, max_eq_right hpq] using hBottomD)
  have hTopZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a r) (corner d s) hTopC (by
        simpa [corner, min_eq_left had, max_eq_right had,
          min_eq_left hrs, max_eq_right hrs] using hTopD)
  have hLeftZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a q) (corner b r) hLeftC (by
        simpa [corner, min_eq_left hab, max_eq_right hab,
          min_eq_left hqr, max_eq_right hqr] using hLeftD)
  have hRightZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner c q) (corner d r) hRightC (by
        simpa [corner, min_eq_left hcd, max_eq_right hcd,
          min_eq_left hqr, max_eq_right hqr] using hRightD)
  rw [hBottomZero, hTopZero, hLeftZero, hRightZero] at hsum
  simpa only [add_zero, zero_add, sub_eq_zero] using hsum

/-- A nondegenerate axis-aligned rectangle, stored in coordinate order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `895b733bb679fb6a458800744e769385f6e54f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
