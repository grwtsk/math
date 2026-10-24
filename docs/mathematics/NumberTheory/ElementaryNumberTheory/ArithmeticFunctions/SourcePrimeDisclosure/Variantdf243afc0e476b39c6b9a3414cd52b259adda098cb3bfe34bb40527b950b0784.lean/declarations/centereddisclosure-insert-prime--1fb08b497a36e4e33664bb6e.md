# centeredDisclosure_insert_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee336bdf-ff1c-a4a2-67cb-9f9987bdfaf8",
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
  "slug": "centereddisclosure-insert-prime--1fb08b497a36e4e33664bb6e",
  "source": {
    "blob": "191d9f886637eb847e7e25f8ba5f7d1724891606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 118,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb08b497a36e4e33664bb6ed20ad05f162cbc335488b2768edae7cf992625e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee336bdf-ff1c-a4a2-67cb-9f9987bdfaf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–141.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191d9f886637eb847e7e25f8ba5f7d1724891606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
