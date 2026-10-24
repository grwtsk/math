# fundamentalInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e9b5177031108464bab07bc7c073dd351f89dd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ecc364a-49e8-218e-c820-cea79084424f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb2d3f6b-baaf-55a4-760e-433cf9d4c36f",
  "kind": "theorem",
  "lexical_name": "fundamentalInterior",
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
  "slug": "fundamentalinterior--cc74fe81e7bd450bc54c5520",
  "source": {
    "blob": "5e9b5177031108464bab07bc7c073dd351f89dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 592,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc74fe81e7bd450bc54c55200e12d5a5b8dc500b8346b98db0ed5062799e8611",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2d3f6b-baaf-55a4-760e-433cf9d4c36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem fundamentalInterior : IsFundamentalDomain G (fundamentalInterior G s) μ where
  nullMeasurableSet := hs.nullMeasurableSet.fundamentalInterior _ _
  ae_covers := by
    simp_rw [ae_iff, not_exists, ← mem_inv_smul_set_iff, ofPred_forall, ← compl_ofPred,
      ofPred_mem_eq, ← compl_iUnion]
    have :
      ((⋃ g : G, g⁻¹ • s) \ ⋃ g : G, g⁻¹ • fundamentalFrontier G s) ⊆
        ⋃ g : G, g⁻¹ • fundamentalInterior G s := by
      simp_rw [sdiff_subset_iff, ← iUnion_union_distrib, ← smul_set_union (α := G) (β := α),
        fundamentalFrontier_union_fundamentalInterior]; rfl
    refine eq_bot_mono (μ.mono <| compl_subset_compl.2 this) ?_
    simp only [iUnion_inv_smul, compl_sdiff, ENNReal.bot_eq_zero,
      @iUnion_smul_eq_ofPred_exists _ _ _ _ s]
    exact measure_union_null
      (measure_iUnion_null fun _ => measure_smul_null hs.measure_fundamentalFrontier _) hs.ae_covers
  aedisjoint := (pairwise_disjoint_fundamentalInterior _ _).mono fun _ _ => Disjoint.aedisjoint

end IsFundamentalDomain

section FundamentalDomainMeasure

variable (G) [Group G] [MulAction G α] [MeasurableSpace α]
  (μ : Measure α)

local notation "α_mod_G" => MulAction.orbitRel G α

local notation "π" => @Quotient.mk _ α_mod_G

variable {G}

@[to_additive addMeasure_map_restrict_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9b5177031108464bab07bc7c073dd351f89dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
