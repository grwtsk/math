# typeTwoPairTerm_eq_coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31b814d3c658d1ee1a4c6990412ff9ee5757e395",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9190a69-c491-1204-01ab-549cd338fdaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ead162e2-9c56-aeb3-bd1f-e8466e2ab85e",
  "kind": "theorem",
  "lexical_name": "typeTwoPairTerm_eq_coefficients",
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
  "slug": "typetwopairterm-eq-coefficients--e58a11cbe0925315eeb6a0dd",
  "source": {
    "blob": "31b814d3c658d1ee1a4c6990412ff9ee5757e395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e58a11cbe0925315eeb6a0dd84ee55259ffb3f0cc2458481c37f93fb8342d261",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ead162e2-9c56-aeb3-bd1f-e8466e2ab85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoPairTerm_eq_coefficients (A : ℝ) (p : ℕ × ℕ)
    (hp : p ∈ longOffDiagonalPairs A) :
    typeTwoPairTerm A p =
      (vonMangoldt p.1 / Real.sqrt (p.1 : ℝ)) *
        (beta (vaughanCutoff A) p.2 / Real.sqrt (p.2 : ℝ)) *
          sourceCorrelation explicitSecondDerivative A (Real.log p.1 + Real.log p.2) := by
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).2
  have hm0 : 0 < (p.1 : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hn0 : 0 < (p.2 : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hn).1
  unfold typeTwoPairTerm sourcePlainWeight
  rw [Nat.cast_mul, Real.log_mul hm0.ne' hn0.ne', Real.sqrt_mul hm0.le]
  ring

/-- Every retained pair has the actual nonnegative product slack in [0,2A]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b814d3c658d1ee1a4c6990412ff9ee5757e395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
