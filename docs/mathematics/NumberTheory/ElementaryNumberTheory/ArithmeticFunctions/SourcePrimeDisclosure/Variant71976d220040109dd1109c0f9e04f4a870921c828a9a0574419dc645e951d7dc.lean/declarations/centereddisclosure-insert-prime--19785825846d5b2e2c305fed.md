# centeredDisclosure_insert_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2140826d1a640d0c6f7a3ee1effab23a7c01eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b08decc-9993-bcad-75af-4ac96ba82d66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4e0ca6c-2825-8b8a-47c2-aa79d279401c",
  "kind": "theorem",
  "lexical_name": "centeredDisclosure_insert_prime",
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
  "slug": "centereddisclosure-insert-prime--19785825846d5b2e2c305fed",
  "source": {
    "blob": "6b2140826d1a640d0c6f7a3ee1effab23a7c01eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19785825846d5b2e2c305fed9dd04e6fc9a2f9b858bf1c094cb7315399e47980",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e0ca6c-2825-8b8a-47c2-aa79d279401c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredDisclosure_insert_prime (D E : Finset ℕ) (p n : ℕ)
    (hp : p.Prime) (hE : ∀ e ∈ E, Nat.Coprime p e)
    (hdisj : Disjoint D (E.image (p * ·))) :
    centeredDisclosure (D ∪ E.image (p * ·)) n =
      centeredDisclosure D n + freshPrimeCorrection p E n := by
  classical
  have hinj : Function.Injective (p * · : ℕ → ℕ) :=
    fun a b h => Nat.eq_of_mul_eq_mul_left hp.pos h
  unfold centeredDisclosure
  rw [Finset.sum_union hdisj, Finset.sum_image (fun _ _ _ _ h => hinj h)]
  congr 1
  have hs : (∑ e ∈ E, (ArithmeticFunction.moebius (p * e) : ℝ) *
      (1 / ((p * e : ℕ) : ℝ) - if p * e ∣ n then 1 else 0)) =
      ∑ e ∈ E, (-(1 / (p : ℝ)) * ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) +
        (if p ∣ n then if e ∣ n then (ArithmeticFunction.moebius e : ℝ) else 0 else 0)) := by
    apply Finset.sum_congr rfl
    intro e he
    exact fresh_prime_discrepancy hp (hE e he)
  rw [hs]
  unfold freshPrimeCorrection disclosedMean disclosedDivisorSum
  rw [Finset.sum_add_distrib, ← Finset.mul_sum]
  split_ifs <;> simp_all

/-- The arbitrary-prime update uses the genuine U/p truncation, including U<p. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2140826d1a640d0c6f7a3ee1effab23a7c01eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
