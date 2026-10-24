# prodPrimeFactors_add_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08935915dff29524ae272253fd6e079b56646f7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 713,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c50058728f186f64ec82e900941dcdb8877f907964c6651df98e6481d5a3656d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e09dbac3-2bc4-294c-e3cb-f980ebf8e472",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:130d4495-b460-562a-0431-b0dc128d1d5d",
  "kind": "theorem",
  "lexical_name": "prodPrimeFactors_add_of_squarefree",
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
  "slug": "prodprimefactors-add-of-squarefree--b4d28a25c30919291fafe53e",
  "source": {
    "blob": "08935915dff29524ae272253fd6e079b56646f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 713,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc50058728f186f64ec82e900941dcdb8877f907964c6651df98e6481d5a3656d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d28a25c30919291fafe53e30fa11c737e2d9fce695455eb37222979f15b2f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc50058728f186f64ec82e900941dcdb8877f907964c6651df98e6481d5a3656d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130d4495-b460-562a-0431-b0dc128d1d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodPrimeFactors_add_of_squarefree [CommSemiring R] {f g : ArithmeticFunction R}
    (hf : IsMultiplicative f) (hg : IsMultiplicative g) {n : ℕ} (hn : Squarefree n) :
    ∏ᵖ p ∣ n, (f + g) p = (f * g) n := by
  rw [prodPrimeFactors_apply hn.ne_zero]
  simp_rw [add_apply (f := f) (g := g)]
  rw [Finset.prod_add, mul_apply, sum_divisorsAntidiagonal (f · * g ·),
    ← divisors_filter_squarefree_of_squarefree hn, sum_divisors_filter_squarefree hn.ne_zero,
    factors_eq]
  apply Finset.sum_congr rfl
  intro t ht
  rw [t.prod_val, Function.id_def,
    ← prod_primeFactors_sdiff_of_squarefree hn (Finset.mem_powerset.mp ht),
    hf.map_prod_of_subset_primeFactors n t (Finset.mem_powerset.mp ht),
    ← hg.map_prod_of_subset_primeFactors n (_ \ t) Finset.sdiff_subset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc50058728f186f64ec82e900941dcdb8877f907964c6651df98e6481d5a3656d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantc50058728f186f64ec82e900941dcdb8877f907964c6651df98e6481d5a3656d.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08935915dff29524ae272253fd6e079b56646f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
