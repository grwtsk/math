# cardQuot_mul_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5c20d3b-bb0c-a710-d34c-8e5e1e170645",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d85d160-0a3a-1c63-0d2c-306ebb0f3cd5",
  "kind": "theorem",
  "lexical_name": "cardQuot_mul_of_coprime",
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
  "slug": "cardquot-mul-of-coprime--ffc3a7b86722499b14c6fd49",
  "source": {
    "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 109,
    "path": "GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc3a7b86722499b14c6fd495f57955362d9ef7895856fd6e27d6dc44b45f92b",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d85d160-0a3a-1c63-0d2c-306ebb0f3cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardQuot_mul_of_coprime [IsDedekindDomain S] [Module.Free ℤ S] [Module.Finite ℤ S]
    {I J : Ideal S} (coprime : I ⊔ J = ⊤) : cardQuot (I * J) = cardQuot I * cardQuot J := by
  let b := Module.Free.chooseBasis ℤ S
  cases isEmpty_or_nonempty (Module.Free.ChooseBasisIndex ℤ S)
  · haveI : Subsingleton S := Function.Surjective.subsingleton b.repr.toEquiv.symm.surjective
    nontriviality S
    exfalso
    exact not_nontrivial_iff_subsingleton.mpr ‹Subsingleton S› ‹Nontrivial S›
  haveI : Infinite S := Infinite.of_surjective _ b.repr.toEquiv.surjective
  by_cases hI : I = ⊥
  · rw [hI, Submodule.bot_mul, cardQuot_bot, zero_mul]
  by_cases hJ : J = ⊥
  · rw [hJ, Submodule.mul_bot, cardQuot_bot, mul_zero]
  have hIJ : I * J ≠ ⊥ := mt Ideal.mul_eq_bot.mp (not_or_of_not hI hJ)
  letI := Classical.decEq (Module.Free.ChooseBasisIndex ℤ S)
  letI := I.fintypeQuotientOfFreeOfNeBot hI
  letI := J.fintypeQuotientOfFreeOfNeBot hJ
  letI := (I * J).fintypeQuotientOfFreeOfNeBot hIJ
  rw [cardQuot_apply, cardQuot_apply, cardQuot_apply,
    Fintype.card_eq.mpr ⟨(Ideal.quotientMulEquivQuotientProd I J coprime).toEquiv⟩,
    Fintype.card_prod]
#align card_quot_mul_of_coprime cardQuot_mul_of_coprime

/-- If the `d` from `Ideal.exists_mul_add_mem_pow_succ` is unique, up to `P`,
then so are the `c`s, up to `P ^ (i + 1)`.
Inspired by [Neukirch], proposition 6.1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c99b49893a1e688ace8d85303eb753632bea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
