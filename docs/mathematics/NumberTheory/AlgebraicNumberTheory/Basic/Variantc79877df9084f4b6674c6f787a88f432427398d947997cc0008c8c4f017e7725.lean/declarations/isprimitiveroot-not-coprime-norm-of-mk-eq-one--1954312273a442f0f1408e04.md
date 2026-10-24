# IsPrimitiveRoot.not_coprime_norm_of_mk_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3434e98a-50fd-5947-5f6d-168315c48106",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7361a445-772f-5045-07ba-364b8d3af859",
  "kind": "theorem",
  "lexical_name": "IsPrimitiveRoot.not_coprime_norm_of_mk_eq_one",
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
  "slug": "isprimitiveroot-not-coprime-norm-of-mk-eq-one--1954312273a442f0f1408e04",
  "source": {
    "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1954312273a442f0f1408e04dd5ef39d1ad28b3316a116fa3ff64a467625ec49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7361a445-772f-5045-07ba-364b8d3af859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitiveRoot.not_coprime_norm_of_mk_eq_one [NumberField K] (hI : absNorm I ≠ 1) {n : ℕ}
    {ζ : K} (hn : 2 ≤ n) (hζ : IsPrimitiveRoot ζ n)
    (h : letI _ : NeZero n := NeZero.of_gt hn; Ideal.Quotient.mk I hζ.toInteger = 1) :
    ¬ (absNorm I).Coprime n := by
  intro h₁
  rw [← map_one (Ideal.Quotient.mk I), Ideal.Quotient.eq] at h
  obtain ⟨p, hp, h₂⟩ := Nat.exists_prime_and_dvd hI
  have : Fact (p.Prime) := ⟨hp⟩
  refine hp.not_dvd_one <| h₁ ▸ Nat.dvd_gcd h₂ ?_
  exact hζ.prime_dvd_of_dvd_norm_sub_one hn <|
    Int.dvd_trans (Int.natCast_dvd_natCast.mpr h₂) (absNorm_dvd_norm_of_mem h)

variable (I)

/--
For `I` an integral ideal of `K`, the group morphism from the group of roots of unity of `K`
of order `n` to `(𝓞 K ⧸ I)ˣ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db683007f03664e2020ace3a71a069e9a1ec25af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
