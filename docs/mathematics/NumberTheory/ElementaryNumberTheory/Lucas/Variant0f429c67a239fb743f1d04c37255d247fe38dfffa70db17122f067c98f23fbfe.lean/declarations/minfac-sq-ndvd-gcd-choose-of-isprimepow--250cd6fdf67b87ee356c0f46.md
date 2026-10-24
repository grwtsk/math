# minFac_sq_ndvd_gcd_choose_of_isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d8b4997-9149-ba4e-6ea8-9de77ee81cb8",
  "kind": "lemma",
  "lexical_name": "minFac_sq_ndvd_gcd_choose_of_isPrimePow",
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
  "slug": "minfac-sq-ndvd-gcd-choose-of-isprimepow--250cd6fdf67b87ee356c0f46",
  "source": {
    "blob": "da577617157bbaffb0e8d3576c77923344d3330b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 174,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:250cd6fdf67b87ee356c0f46d9bf861eb7baea25ddc2d9766b49c4fc370911d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8b4997-9149-ba4e-6ea8-9de77ee81cb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minFac_sq_ndvd_gcd_choose_of_isPrimePow (h : IsPrimePow n) :
    ¬ n.minFac ^ 2 ∣ (Icc 1 (n - 1)).gcd n.choose := by
  obtain ⟨k, _, k_pos, hn₁⟩ := (isPrimePow_nat_iff_bounded_log_minFac _).mp h
  have isPrime := minFac_prime_iff.mpr (IsPrimePow.ne_one h)
  refine mt Finset.dvd_gcd_iff.mp ?_
  simp only [mem_Icc, not_forall]
  have : n.minFac ^ (k - 1) ≤ n.minFac ^ k := Nat.pow_le_pow_right (minFac_pos n) (sub_le k 1)
  refine ⟨n.minFac ^ (k - 1), ⟨one_le_pow _ _ (minFac_pos n), ?_⟩, ?_⟩
  · refine le_sub_one_of_lt ?_
    nth_rw 2 [hn₁]
    exact Nat.pow_lt_pow_of_lt (Prime.one_lt isPrime) (sub_one_lt_of_lt k_pos)
  · refine emultiplicity_lt_iff_not_dvd.mp ?_
    nth_rw 2 [hn₁]
    rw [Nat.Prime.emultiplicity_choose_prime_pow isPrime this (pow_ne_zero _
      (Nat.Prime.ne_zero isPrime)), multiplicity_pow_self_of_prime (prime_iff.mp isPrime)]
    norm_cast
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da577617157bbaffb0e8d3576c77923344d3330b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
