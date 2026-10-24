# apply_le_sum_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:666c770e-b521-a1eb-c7fc-258f97c0224b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40ac75fe-c36a-1279-8e68-b253dd03db1a",
  "kind": "lemma",
  "lexical_name": "apply_le_sum_digits",
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
  "slug": "apply-le-sum-digits--c41e03f00f5accc7f46338cc",
  "source": {
    "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 283,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c41e03f00f5accc7f46338cc208f3406d52de1b61967ea939603338e91e1afcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ac75fe-c36a-1279-8e68-b253dd03db1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_le_sum_digits (n : ℕ) {m : ℕ} (hm : 1 < m) :
    f n ≤ ((Nat.digits m n).mapIdx fun i _ ↦ m * (f m) ^ i).sum := by
  set L := Nat.digits m n
  set L' : List ℚ := List.map Nat.cast (L.mapIdx fun i a ↦ (a * m ^ i)) with hL'
  -- If `c` is a digit in the expansion of `n` in base `m`, then `f c` is less than `m`.
  have hcoef {c : ℕ} (hc : c ∈ Nat.digits m n) : f c < m :=
    lt_of_le_of_lt (f.apply_nat_le_self c) (mod_cast Nat.digits_lt_base hm hc)
  calc
  f n = f ((Nat.ofDigits m L : ℕ) : ℚ) := by rw [Nat.ofDigits_digits m n]
    _ = f L'.sum := by rw [Nat.ofDigits_eq_sum_mapIdx]; norm_cast
    _ ≤ (L'.map f).sum := listSum_le f L'
    _ ≤ (L.mapIdx fun i _ ↦ m * (f m) ^ i).sum := ?_
  simp only [hL', List.mapIdx_eq_zipIdx_map, List.map_map]
  refine List.sum_le_sum fun ⟨a, i⟩ hia ↦ ?_
  dsimp only [Function.comp_apply, Function.uncurry_apply_pair]
  replace hia := List.mem_zipIdx hia
  push_cast
  rw [map_mul, map_pow]
  refine mul_le_mul_of_nonneg_right ?_ <| pow_nonneg (f.nonneg _) i
  simp only [zero_le, zero_add, tsub_zero, true_and] at hia
  exact (hcoef (List.mem_iff_get.mpr ⟨⟨i, hia.1⟩, hia.2.symm⟩)).le

-- ## Step 1: if f is an AbsoluteValue and f n > 1 for some natural n, then f n > 1 for all n ≥ 2

/-- If `f n > 1` for some `n` then `f n > 1` for all `n ≥ 2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac74f5817575d5ab839eb460e5284b309bad584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
