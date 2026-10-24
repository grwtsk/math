# isFractionRing_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1ae05d499f42ed6654839987c7f1d2a7cbfe18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0afec801-35cc-9b2d-e74a-725db60a4a04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35a7ad99-773f-62bd-049e-6fe7d8adcb49",
  "kind": "theorem",
  "lexical_name": "isFractionRing_of_isLocalization",
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
  "slug": "isfractionring-of-islocalization--d777d49c3332726b16495124",
  "source": {
    "blob": "8d1ae05d499f42ed6654839987c7f1d2a7cbfe18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 257,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d777d49c3332726b1649512427db02d36af2285333f9db4fbd0b5c1d12778fa8",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a7ad99-773f-62bd-049e-6fe7d8adcb49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFractionRing_of_isLocalization (S T : Type*) [CommRing S] [CommRing T] [Algebra R S]
    [Algebra R T] [Algebra S T] [IsScalarTower R S T] [IsLocalization M S] [IsFractionRing R T]
    (hM : M ≤ nonZeroDivisors R) : IsFractionRing S T := by
  have := isLocalization_of_submonoid_le S T M (nonZeroDivisors R) hM
  refine @isLocalization_of_is_exists_mul_mem _ _ _ _ _ _ _ this ?_ ?_
  · exact map_nonZeroDivisors_le M S
  · rintro ⟨x, hx⟩
    obtain ⟨⟨y, s⟩, e⟩ := IsLocalization.surj M x
    use algebraMap R S s
    rw [mul_comm, Subtype.coe_mk, e]
    refine Set.mem_image_of_mem (algebraMap R S) ?_
    intro z hz
    apply IsLocalization.injective S hM
    rw [map_zero]
    apply hx
    rw [← (map_units S s).mul_left_inj, mul_assoc, e, ← map_mul, hz, map_zero,
      zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1ae05d499f42ed6654839987c7f1d2a7cbfe18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
