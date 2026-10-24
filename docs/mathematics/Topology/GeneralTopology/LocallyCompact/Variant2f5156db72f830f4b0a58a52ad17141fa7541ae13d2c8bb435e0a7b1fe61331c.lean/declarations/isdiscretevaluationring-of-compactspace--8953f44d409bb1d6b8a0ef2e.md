# isDiscreteValuationRing_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2b9ef4e-3bbe-9f5d-3ded-350b922d249f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:affb907c-625a-d370-44d2-bddbabab325f",
  "kind": "lemma",
  "lexical_name": "isDiscreteValuationRing_of_compactSpace",
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
  "slug": "isdiscretevaluationring-of-compactspace--8953f44d409bb1d6b8a0ef2e",
  "source": {
    "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8953f44d409bb1d6b8a0ef2e4febe638a4312e2301443ee13dcf3d35b3659576",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:affb907c-625a-d370-44d2-bddbabab325f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiscreteValuationRing_of_compactSpace [h : CompactSpace 𝒪[K]] :
    IsDiscreteValuationRing 𝒪[K] := by
  -- To prove we have a DVR, we need to show it is a local ring and a PIR and not a field.
  -- First, note that it is a local ring, which the TC knows about.
  -- We prove that it is not a field inline later.
  have hl : IsLocalRing 𝒪[K] := inferInstance
  obtain ⟨x, hx, hx'⟩ := exists_nnnorm_lt_one K
  rw [← nnnorm_one (G := K)] at hx'
  have key : IsPrincipalIdealRing 𝒪[K] :=
    isPrincipalIdealRing_of_compactSpace (NormedField.exists_norm_lt_one K)
  exact {
    __ := hl
    __ := key
    not_a_field' := by
      -- here is the other place where the nontriviality of the norm comes in,
      -- since if we had `‖x‖ = 0 ∨ ‖x‖ = 1`, then the maximal ideal would be `⊥`.
      simp only [ne_eq, Ideal.ext_iff, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
        Ideal.mem_bot, not_forall, isUnit_iff_norm_eq_one]
      refine ⟨x, ?_⟩
      simp only [← coe_lt_coe, coe_zero, coe_nnnorm, norm_pos_iff, ne_eq,
        ZeroMemClass.coe_eq_zero, nnnorm_one, coe_one] at hx hx'
      simpa [hx] using hx'.ne
  }

end CompactDVR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
