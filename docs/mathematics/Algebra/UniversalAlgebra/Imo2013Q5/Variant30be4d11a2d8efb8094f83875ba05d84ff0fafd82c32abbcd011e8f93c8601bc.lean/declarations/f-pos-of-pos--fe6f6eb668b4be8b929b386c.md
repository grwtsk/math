# f_pos_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83607d08-1b3e-60ef-0138-7eeb07b79f94",
  "kind": "theorem",
  "lexical_name": "f_pos_of_pos",
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
  "slug": "f-pos-of-pos--fe6f6eb668b4be8b929b386c",
  "source": {
    "blob": "1dbff36df5fd5694af0b1767af622e17bb52fb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 92,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe6f6eb668b4be8b929b386cda43f7feced07b62d85ece34f49f0eb9025b9adf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83607d08-1b3e-60ef-0138-7eeb07b79f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_pos_of_pos {f : ℚ → ℝ} {q : ℚ} (hq : 0 < q)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n) :
    0 < f q := by
  have num_pos : 0 < q.num := Rat.num_pos.mpr hq
  have hmul_pos :=
    calc
      (0 : ℝ) < q.num := Int.cast_pos.mpr num_pos
      _ = ((q.num.natAbs : ℤ) : ℝ) := congr_arg Int.cast (Int.natAbs_of_nonneg num_pos.le).symm
      _ ≤ f q.num.natAbs := (H4 q.num.natAbs ((@Int.natAbs_pos q.num).mpr num_pos.ne.symm))
      _ = f q.num := by rw [Nat.cast_natAbs, abs_of_nonneg num_pos.le]
      _ = f (q * q.den) := by rw [← Rat.mul_den_eq_num]
      _ ≤ f q * f q.den := H1 q q.den hq (Nat.cast_pos.mpr q.pos)
  have h_f_denom_pos :=
    calc
      (0 : ℝ) < q.den := Nat.cast_pos.mpr q.pos
      _ ≤ f q.den := H4 q.den q.pos
  exact pos_of_mul_pos_left hmul_pos h_f_denom_pos.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbff36df5fd5694af0b1767af622e17bb52fb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
