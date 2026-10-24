# spectralNorm_pow_natDegree_eq_prod_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e9a60102536e0e1f02d8eff93d443cc04bc5c46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 936,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a45cdb8-daf9-f806-b766-8550ada5d237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f568524d-892d-2354-4302-c8fac82b7a81",
  "kind": "theorem",
  "lexical_name": "spectralNorm_pow_natDegree_eq_prod_roots",
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
  "slug": "spectralnorm-pow-natdegree-eq-prod-roots--41e77e610ee2db67b6e6e775",
  "source": {
    "blob": "0e9a60102536e0e1f02d8eff93d443cc04bc5c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 964,
    "line": 936,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e77e610ee2db67b6e6e77528476900c3b18b86c3865eb4c9c4cd39dce0e667",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f568524d-892d-2354-4302-c8fac82b7a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 936–964.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralNorm_pow_natDegree_eq_prod_roots (x : L) {E : Type*} [Field E] [Algebra K E]
    [Algebra L E] [IsScalarTower K L E] [IsSplittingField L E (mapAlg K L (minpoly K x))]
    [Algebra.IsAlgebraic K E] :
    (spectralMulAlgNorm K E) ((algebraMap L E) x) ^ (minpoly K x).natDegree =
      (spectralMulAlgNorm K E) ((mapAlg K E) (minpoly K x)).roots.prod := by
  have h_deg : (minpoly K x).natDegree = Multiset.card ((mapAlg K E) (minpoly K x)).roots := by
    trans (mapAlg K E (minpoly K x)).natDegree
    · rw [mapAlg_eq_map, natDegree_map]
    · rw [eq_comm, ← splits_iff_card_roots]
      exact IsSplittingField.IsScalarTower.splits (K := L) E (minpoly K x)
  rw [map_multiset_prod, ← Multiset.prod_replicate]
  apply congr_arg
  ext r
  rw [Multiset.count_replicate]
  split_ifs with hr
  · have h : ∀ s ∈ Multiset.map (spectralMulAlgNorm K E) ((mapAlg K E) (minpoly K x)).roots,
        r = s := by
      intro s hs
      obtain ⟨a, ha, has⟩ := Multiset.mem_map.mp hs
      rw [← hr, ← has, spectralMulAlgNorm_eq_of_mem_roots K L x ha]
    rwa [Multiset.count_eq_card.mpr h, Multiset.card_map]
  · rw [Multiset.count_eq_zero_of_notMem]
    intro hr_mem
    obtain ⟨e, he, her⟩ := Multiset.mem_map.mp hr_mem
    rw [spectralMulAlgNorm_eq_of_mem_roots K L x he] at her
    exact hr her

/-- For `x : L` with minimal polynomial `f(X) := X^n + a_{n-1}X^{n-1} + ... + a_0` over `K`,
  the spectral norm of `x` is equal to `‖a_0‖^(1/(degree(f(X))))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean#L936).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9a60102536e0e1f02d8eff93d443cc04bc5c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
