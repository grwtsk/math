# IsLocalization.minimalPrimes_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f6135ce4543432d7837268995df030cdf15b3fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39b3085d-bc75-328e-b6d8-a57b8700f657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b648ad-a9ef-8c26-14b1-93be5b2553ab",
  "kind": "theorem",
  "lexical_name": "IsLocalization.minimalPrimes_map",
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
  "slug": "islocalization-minimalprimes-map--0bdcded9aeab66d64bd05b06",
  "source": {
    "blob": "9f6135ce4543432d7837268995df030cdf15b3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 181,
    "path": "GRWTSK/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bdcded9aeab66d64bd05b061a076e57cc99733b6fb52848bfa21a0835bbc073",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b648ad-a9ef-8c26-14b1-93be5b2553ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.minimalPrimes_map [IsLocalization S A] (J : Ideal R) :
    (J.map (algebraMap R A)).minimalPrimes = Ideal.under R ⁻¹' J.minimalPrimes := by
  ext p
  constructor
  · intro hp
    have := hp.isPrime
    refine ⟨⟨Ideal.IsPrime.comap _, Ideal.map_le_iff_le_comap.mp hp.le⟩, ?_⟩
    rintro I hI e
    have hI' : Disjoint (S : Set R) I := Set.disjoint_of_subset_right e
      ((IsLocalization.isPrime_iff_isPrime_disjoint S A _).mp hp.isPrime).2
    refine (Ideal.comap_mono <|
      hp.2 ⟨?_, Ideal.map_mono hI.2⟩ (Ideal.map_le_iff_le_comap.mpr e)).trans_eq ?_
    · exact IsLocalization.isPrime_of_isPrime_disjoint S A I hI.1 hI'
    · exact IsLocalization.under_map_of_isPrime_disjoint S A hI.1 hI'
  · intro hp
    refine ⟨⟨?_, Ideal.map_le_iff_le_comap.mpr hp.le⟩, ?_⟩
    · rw [IsLocalization.isPrime_iff_isPrime_disjoint S A, IsLocalization.disjoint_under_iff S]
      refine ⟨hp.isPrime, ?_⟩
      rintro rfl
      exact hp.isPrime.ne_top rfl
    · intro I hI e
      rw [← IsLocalization.map_under S A I, ← IsLocalization.map_under S A p]
      exact Ideal.map_mono (hp.2 ⟨hI.1.comap _, Ideal.map_le_iff_le_comap.mp hI.2⟩
        (Ideal.comap_mono e))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f6135ce4543432d7837268995df030cdf15b3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
