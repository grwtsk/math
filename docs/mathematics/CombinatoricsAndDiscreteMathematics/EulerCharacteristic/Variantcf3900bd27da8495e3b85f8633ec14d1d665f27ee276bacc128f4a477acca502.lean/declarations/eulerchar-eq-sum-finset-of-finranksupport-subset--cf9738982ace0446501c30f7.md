# eulerChar_eq_sum_finSet_of_finrankSupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67bb0647-eb5f-cc61-a816-a0f7d164950b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48f45ce6-4f95-6064-1954-9a5eaee52bca",
  "kind": "theorem",
  "lexical_name": "eulerChar_eq_sum_finSet_of_finrankSupport_subset",
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
  "slug": "eulerchar-eq-sum-finset-of-finranksupport-subset--cf9738982ace0446501c30f7",
  "source": {
    "blob": "39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9738982ace0446501c30f7013a2a480837faa7db56c1944d3d0cee59db518f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48f45ce6-4f95-6064-1954-9a5eaee52bca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerChar_eq_sum_finSet_of_finrankSupport_subset
    (X : CategoryTheory.GradedObject ι (ModuleCat R)) (indices : Finset ι)
    (h_support : finrankSupport X ⊆ indices) :
    eulerChar c X = ∑ i ∈ indices, (c.χ i : ℤ) * Module.finrank R (X i) := by
  simp only [eulerChar]
  rw [finsum_eq_sum_of_support_subset]
  exact (support_eulerChar_summand c X).symm ▸ h_support

end GradedObject

namespace HomologicalComplex

variable {c : ComplexShape ι} [c.EulerCharSigns]

/-- The Euler characteristic of a homological complex as a sum over all indices using `finsum`.
The sign at each index is determined by the `ComplexShape.EulerCharSigns` instance.
Defaults to 0 if the support of the ranks is infinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
