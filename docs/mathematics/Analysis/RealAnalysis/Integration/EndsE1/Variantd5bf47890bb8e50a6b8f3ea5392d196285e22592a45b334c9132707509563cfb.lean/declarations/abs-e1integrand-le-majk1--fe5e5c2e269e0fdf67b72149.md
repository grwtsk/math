# abs_E1integrand_le_majK1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d330d00f-be35-34db-7136-55d7cab2e646",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05494ad2-3dbf-c094-34b1-818db5d288e9",
  "kind": "theorem",
  "lexical_name": "abs_E1integrand_le_majK1",
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
  "slug": "abs-e1integrand-le-majk1--fe5e5c2e269e0fdf67b72149",
  "source": {
    "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe5e5c2e269e0fdf67b72149b4166a682766e18e74eba7e5defbe9af0ee6212e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05494ad2-3dbf-c094-34b1-818db5d288e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_E1integrand_le_majK1 (hF : LocalHypsCoreW cϱ p F) {q : ℝ × ℝ} (hq : q ∈ sqI p) :
    |trG2integrand p F ν q - KinfIntegrand p F ν q| ≤ majK1 p F ν q := by
  obtain ⟨h1, h2⟩ := hq
  have hg1 := gwt_pos (p := p) h1
  have hg2 := gwt_pos (p := p) h2
  have hs : 0 < gwt p q.2 / gwt p q.1 := div_pos hg2 hg1
  have hout := abs_Kinf_sub_Kfun_le hF q.1 q.2 hs
  have hK := abs_Kfun_le hF q.1 q.2
  have hKi := abs_Kinf_le hF q.1 q.2
  have hρ1 := rho_nonneg hF q.1
  have hρ2 := rho_nonneg hF q.2
  -- |K² − K∞²| = |K∞ − K| |K + K∞|
  have hdiff : trG2integrand p F ν q - KinfIntegrand p F ν q
      = -((Kinf p F q.1 q.2 - Kfun p F q.1 q.2) * (Kfun p F q.1 q.2 + Kinf p F q.1 q.2))
        * (ν q.1 * ν q.2) := by
    unfold trG2integrand KinfIntegrand; ring
  rw [hdiff, abs_mul, abs_neg, abs_mul, abs_mul]
  have hsum : |Kfun p F q.1 q.2 + Kinf p F q.1 q.2| ≤ 2 * p.L ^ 2 :=
    le_trans (abs_add_le _ _) (by linarith)
  have hw : (gwt p q.2 / gwt p q.1 * rho p F q.1 + rho p F q.2 / (gwt p q.2 / gwt p q.1)) / 2
      = (rho p F q.1 / gwt p q.1 * gwt p q.2 + gwt p q.1 * (rho p F q.2 / gwt p q.2)) / 2 := by
    field_simp
  rw [hw] at hout
  set Rw := rho p F q.1 / gwt p q.1 * gwt p q.2 + gwt p q.1 * (rho p F q.2 / gwt p q.2) with hRw
  have hRw0 : 0 ≤ Rw := by rw [hRw]; positivity
  calc |Kinf p F q.1 q.2 - Kfun p F q.1 q.2| * |Kfun p F q.1 q.2 + Kinf p F q.1 q.2|
        * (|ν q.1| * |ν q.2|)
      ≤ (Rw / 2) * (2 * p.L ^ 2) * (|ν q.1| * |ν q.2|) := by
        apply mul_le_mul_of_nonneg_right (mul_le_mul hout hsum (abs_nonneg _) (by positivity))
          (by positivity)
    _ = majK1 p F ν q := by simp only [majK1, hRw]; ring

/-- `majK1 ≤ L²B²·(ρ/g·g' + g·ρ'/g')` on `I×I` when `|ν| ≤ B` there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
