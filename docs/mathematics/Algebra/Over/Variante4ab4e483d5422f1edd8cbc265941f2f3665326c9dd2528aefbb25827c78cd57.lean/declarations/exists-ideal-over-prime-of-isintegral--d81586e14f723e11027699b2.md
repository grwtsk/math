# exists_ideal_over_prime_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0b445ca3c355c6af50c4f8ef90c96ddca6211d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aee74622-c828-c018-35ca-3590f469e580",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efc2669a-2744-7a6f-9e93-0828ed9768f0",
  "kind": "theorem",
  "lexical_name": "exists_ideal_over_prime_of_isIntegral",
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
  "slug": "exists-ideal-over-prime-of-isintegral--d81586e14f723e11027699b2",
  "source": {
    "blob": "d0b445ca3c355c6af50c4f8ef90c96ddca6211d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 391,
    "path": "GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81586e14f723e11027699b2668ce2217d10381d983618b8fc0ef02bbf5c7ab6",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc2669a-2744-7a6f-9e93-0828ed9768f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ideal_over_prime_of_isIntegral (H : Algebra.IsIntegral R S) (P : Ideal R) [IsPrime P]
    (I : Ideal S) [IsPrime I] (hIP : I.comap (algebraMap R S) ≤ P) :
    ∃ Q ≥ I, IsPrime Q ∧ Q.comap (algebraMap R S) = P := by
  obtain ⟨Q' : Ideal (S ⧸ I), ⟨Q'_prime, hQ'⟩⟩ :=
    @exists_ideal_over_prime_of_isIntegral' (R ⧸ I.comap (algebraMap R S)) _ (S ⧸ I) _
      Ideal.quotientAlgebra _ (isIntegral_quotient_of_isIntegral H)
      (map (Ideal.Quotient.mk (I.comap (algebraMap R S))) P)
      (map_isPrime_of_surjective Quotient.mk_surjective (by simp [hIP]))
      (le_trans (le_of_eq ((RingHom.injective_iff_ker_eq_bot _).1 algebraMap_quotient_injective))
        bot_le)
  refine' ⟨Q'.comap _, le_trans (le_of_eq mk_ker.symm) (ker_le_comap _), ⟨comap_isPrime _ Q', _⟩⟩
  rw [comap_comap]
  refine' _root_.trans _ (_root_.trans (congr_arg (comap (Ideal.Quotient.mk
    (comap (algebraMap R S) I))) hQ') _)
  · rw [comap_comap]
    exact congr_arg (comap . Q') (RingHom.ext fun r => rfl)
  · refine' _root_.trans (comap_map_of_surjective _ Quotient.mk_surjective _) (sup_eq_left.2 _)
    simpa [← RingHom.ker_eq_comap_bot] using hIP
#align ideal.exists_ideal_over_prime_of_is_integral Ideal.exists_ideal_over_prime_of_isIntegral

/-- `comap (algebraMap R S)` is a surjection from the max spec of `S` to max spec of `R`.
`hP : (algebraMap R S).ker ≤ P` is a slight generalization of the extension being injective -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b445ca3c355c6af50c4f8ef90c96ddca6211d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
