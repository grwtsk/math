# exists_isIntegral_sub_of_isIntegralElem_of_mul_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3d59d61-6c8f-9f64-4318-6f9d3d0ef373",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c470baf9-7589-9863-00a4-d5e2eda0fc05",
  "kind": "lemma",
  "lexical_name": "exists_isIntegral_sub_of_isIntegralElem_of_mul_mem_range",
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
  "slug": "exists-isintegral-sub-of-isintegralelem-of-mul-mem-range--2abdbd9d5041f74a411ed7de",
  "source": {
    "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2abdbd9d5041f74a411ed7de30b62cc8a86a8ebfc74e2c0005af3e8917c1b5e3",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c470baf9-7589-9863-00a4-d5e2eda0fc05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isIntegral_sub_of_isIntegralElem_of_mul_mem_range
    (ht : φ.IsIntegralElem t) (hpm : p.Monic) (hp : φ p * t ∈ φ.range) :
    ∃ q, IsIntegral R (t - φ q) := by
  obtain ⟨r, hr : φ r = _⟩ := hp
  obtain rfl | hp1 := eq_or_ne p 1
  · exact ⟨r, by simp_all [isIntegral_zero]⟩
  exact ⟨_, isIntegral_of_isIntegralElem_of_monic_of_natDegree_lt φ (t - φ (r /ₘ p)) p (r %ₘ p)
    (ht.sub _ φ.isIntegralElem_map) hpm (natDegree_modByMonic_lt _ hpm hp1)
    (by simp [mul_sub, ← hr, sub_eq_iff_eq_add, ← map_mul, ← map_add, r.modByMonic_add_div])⟩

open IsScalarTower in
attribute [local simp] IsLocalization.map_eq aeval_algebraMap_apply aeval_algHom_apply in
@[stacks 00PV]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
