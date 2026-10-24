# coprime_of_root_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88a713b3-6a4d-34f7-775d-121100a02748",
  "kind": "theorem",
  "lexical_name": "coprime_of_root_cyclotomic",
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
  "slug": "coprime-of-root-cyclotomic--c086f2c567a8393e04deba1f",
  "source": {
    "blob": "31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 625,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c086f2c567a8393e04deba1f8c50c8c17c60de716f6758dcc07ff0525af280ac",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a713b3-6a4d-34f7-775d-121100a02748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_of_root_cyclotomic {n : ℕ} (hpos : 0 < n) {p : ℕ} [hprime : Fact p.Prime] {a : ℕ}
    (hroot : IsRoot (cyclotomic n (ZMod p)) (Nat.castRingHom (ZMod p) a)) : a.coprime p := by
  apply Nat.coprime.symm
  rw [hprime.1.coprime_iff_not_dvd]
  intro h
  replace h := (ZMod.nat_cast_zmod_eq_zero_iff_dvd a p).2 h
  rw [IsRoot.def, eq_natCast, h, ← coeff_zero_eq_eval_zero] at hroot
  by_cases hone : n = 1
  · simp only [hone, cyclotomic_one, zero_sub, coeff_one_zero, coeff_X_zero, neg_eq_zero,
      one_ne_zero, coeff_sub] at hroot
  rw [cyclotomic_coeff_zero (ZMod p) (Nat.succ_le_of_lt
    (lt_of_le_of_ne (Nat.succ_le_of_lt hpos) (Ne.symm hone)))] at hroot
  exact one_ne_zero hroot
#align polynomial.coprime_of_root_cyclotomic Polynomial.coprime_of_root_cyclotomic

end Cyclotomic

section Order

/-- If `(a : ℕ)` is a root of `cyclotomic n (ZMod p)`, then the multiplicative order of `a` modulo
`p` divides `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
