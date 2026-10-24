# isUnit_norm_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23cf92053bc2219adb62205a640dc67bbb2e5bcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:596e7455-a866-1f97-0711-6cd29c92bd81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:552224a5-9bbc-a717-0d39-f8ce64b6b0b2",
  "kind": "theorem",
  "lexical_name": "isUnit_norm_of_isGalois",
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
  "slug": "isunit-norm-of-isgalois--d1af65601a716478904e526f",
  "source": {
    "blob": "23cf92053bc2219adb62205a640dc67bbb2e5bcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1af65601a716478904e526ff370f801fd320f37aa17e78a05f2ae4aa60b5e6b",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552224a5-9bbc-a717-0d39-f8ce64b6b0b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_norm_of_isGalois [IsGalois K L] {x : 𝓞 L} : IsUnit (norm K x) ↔ IsUnit x := by
  classical
  refine ⟨fun hx => ?_, IsUnit.map _⟩
  replace hx : IsUnit (algebraMap (𝓞 K) (𝓞 L) <| norm K x) := hx.map (algebraMap (𝓞 K) <| 𝓞 L)
  refine @isUnit_of_mul_isUnit_right (𝓞 L) _
    ⟨(univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x,
      prod_mem fun σ _ => x.2.map (σ : L →+* L).toIntAlgHom⟩ _ ?_
  convert hx using 1
  ext
  convert_to ((univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x) *
    ∏ σ ∈ {(AlgEquiv.refl : L ≃ₐ[K] L)}, σ x = _
  · rw [prod_singleton, AlgEquiv.coe_refl, _root_.id, RingOfIntegers.coe_eq_algebraMap, map_mul,
      RingOfIntegers.map_mk]
  · rw [prod_sdiff <| subset_univ _, ← norm_eq_prod_automorphisms, coe_algebraMap_norm]

/-- If `L/K` is a finite Galois extension of fields, then, for all `(x : 𝓞 L)` we have that
`x ∣ algebraMap (𝓞 K) (𝓞 L) (norm K x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23cf92053bc2219adb62205a640dc67bbb2e5bcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
