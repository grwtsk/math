# coeff_linearCombination_X_pow_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a54e95ab700075e4a30edcb9a6a517acb55be0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:655adf94-8f4d-cc56-735f-1609c626e853",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d806ed5d-f678-2102-fdf2-0ac3b4d50b04",
  "kind": "lemma",
  "lexical_name": "coeff_linearCombination_X_pow_of_fintype",
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
  "slug": "coeff-linearcombination-x-pow-of-fintype--fdd8746d77c742d5af70afb7",
  "source": {
    "blob": "a54e95ab700075e4a30edcb9a6a517acb55be0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdd8746d77c742d5af70afb710b6f4210712011d336d86cfadc52aae38ae8a43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d806ed5d-f678-2102-fdf2-0ac3b4d50b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_linearCombination_X_pow_of_fintype [Fintype σ] (a : σ → R) (s : σ →₀ ℕ) (n : ℕ) :
    ((∑ i, a i • X i : MvPolynomial σ R) ^ n).coeff s =
      if s.sum (fun _ m ↦ m) = n then s.multinomial * s.prod (fun r m ↦ a r ^ m) else 0 := by
  rw [← ofSupportFinite_coe (f := a) (hf := Set.toFinite _),
    prod_congr (fun r _ ↦ rfl), ← coeff_linearCombination_X_pow]
  simp [linearCombination_apply, sum_of_support_subset (s := Finset.univ)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54e95ab700075e4a30edcb9a6a517acb55be0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
