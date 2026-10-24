# exists_frobenius_solution_fractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d732868-3a69-0a0c-271a-1d2911d1c122",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a69f4970-2133-a49f-cd29-34df0e98cdce",
  "kind": "theorem",
  "lexical_name": "exists_frobenius_solution_fractionRing",
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
  "slug": "exists-frobenius-solution-fractionring--d47409ccde37d576b953f627",
  "source": {
    "blob": "7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 250,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d47409ccde37d576b953f62754b44b2530b1cda24ba5d87ca87380a9ff38adb9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a69f4970-2133-a49f-cd29-34df0e98cdce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_frobenius_solution_fractionRing {a : FractionRing (𝕎 k)} (ha : a ≠ 0) :
    ∃ᵉ (b ≠ 0) (m : ℤ), φ b * a = (p : FractionRing (𝕎 k)) ^ m * b := by
  revert ha
  refine Localization.induction_on a ?_
  rintro ⟨r, q, hq⟩ hrq
  have hq0 : q ≠ 0 := mem_nonZeroDivisors_iff_ne_zero.1 hq
  have hr0 : r ≠ 0 := fun h => hrq (by simp [h])
  obtain ⟨m, r', hr', rfl⟩ := exists_eq_pow_p_mul r hr0
  obtain ⟨n, q', hq', rfl⟩ := exists_eq_pow_p_mul q hq0
  let b := frobeniusRotation p hr' hq'
  refine ⟨algebraMap (𝕎 k) (FractionRing (𝕎 k)) b, ?_, m - n, ?_⟩
  · simpa only [map_zero] using
      (IsFractionRing.injective (WittVector p k) (FractionRing (WittVector p k))).ne
        (frobeniusRotation_nonzero p hr' hq')
  exact exists_frobenius_solution_fractionRing_aux p m n r' q' hr' hq' hq

end IsAlgClosed

end FrobeniusRotation

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
