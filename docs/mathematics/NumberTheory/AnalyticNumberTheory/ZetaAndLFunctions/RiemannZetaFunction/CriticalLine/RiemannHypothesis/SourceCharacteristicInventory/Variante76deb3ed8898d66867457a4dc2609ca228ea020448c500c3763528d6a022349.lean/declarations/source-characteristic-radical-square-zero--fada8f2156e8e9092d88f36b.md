# source_characteristic_radical_square_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c4cdf7ad684e9fc067e821002c0877fcfa29f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14d964b2-9411-68d4-d6a1-f5c9c9f79731",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d130b94-6377-d727-c577-0c4ba83fe7be",
  "kind": "theorem",
  "lexical_name": "source_characteristic_radical_square_zero",
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
  "slug": "source-characteristic-radical-square-zero--fada8f2156e8e9092d88f36b",
  "source": {
    "blob": "a1c4cdf7ad684e9fc067e821002c0877fcfa29f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 371,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fada8f2156e8e9092d88f36b1424e1d1c175a714d135f4d6719d67cbdda0ea1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d130b94-6377-d727-c577-0c4ba83fe7be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_characteristic_radical_square_zero (A ξ : ℝ)
    {x : LowerPowerCharacteristicFiber A ξ}
    (hx : x ∈ Ring.jacobson (LowerPowerCharacteristicFiber A ξ)) : x ^ 2 = 0 := by
  rw [source_characteristic_fiber_jacobson] at hx
  funext n
  by_cases hc : ((chi ξ (n : ℕ)).re : ℂ) ^ 2 = 1
  · apply repeated_kernel_square_zero _ hc
    rw [repeated_kernel_eq_jacobson]
    exact hx n
  · have hn : x n = 0 := by
      have hm := hx n
      change x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) at hm
      rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc, Ideal.mem_bot] at hm
      exact hm
    simp [hn]

/-- The radical ideal, rather than only its individual elements, has square zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c4cdf7ad684e9fc067e821002c0877fcfa29f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
