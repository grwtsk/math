# intValuation_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6124d3b2-c4ec-e167-cc37-c0f5d21324e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5c4e7da-f42d-f46c-9804-887e186d881d",
  "kind": "lemma",
  "lexical_name": "intValuation_maximalIdeal",
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
  "slug": "intvaluation-maximalideal--57a8a7e25d0662d85fc8aa89",
  "source": {
    "blob": "e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 153,
    "path": "GRWTSK/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a8a7e25d0662d85fc8aa891dd316df202ea7f66583fa5fb2bcf46f29458a8f",
  "verification": {
    "reference": "docs/verification/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c4e7da-f42d-f46c-9804-887e186d881d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intValuation_maximalIdeal (x : A) :
    (maximalIdeal A).intValuation x =
      (ENat.recTopCoe 0 (WithZero.coe <| Multiplicative.ofAdd <| Nat.cast · ) (addVal A x))⁻¹ := by
  by_cases hx : x = 0
  · simp [hx]
  obtain ⟨ϖ, hϖ⟩ := exists_irreducible A
  obtain ⟨n, u, rfl⟩ := eq_unit_mul_pow_irreducible hx hϖ
  have : (maximalIdeal A).intValuation ↑u = 1 := by simp [maximalIdeal]
  simp [(maximalIdeal A).intValuation_singleton hϖ.ne_zero
    hϖ.maximalIdeal_eq, hϖ, this, ← WithZero.exp_eq_coe_ofAdd]

end IsDiscreteValuationRing

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
