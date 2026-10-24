# apply_le_sum_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e88a54b2-f2af-0c0e-94f5-7d9729acaa9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49486b71-ebd9-08ee-20d1-a866d713fbaf",
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
  "slug": "apply-le-sum-digits--1c55fcb55dd608dd4afac9c1",
  "source": {
    "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 269,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c55fcb55dd608dd4afac9c1f502df8907ac0e931becae11c9ca08a8cd727cdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49486b71-ebd9-08ee-20d1-a866d713fbaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_le_sum_digits (n : ℕ) {m : ℕ} (hm : 1 < m) :
    f n ≤ ((Nat.digits m n).mapIdx fun i _ ↦ m * (f m) ^ i).sum := by
  set L := Nat.digits m n
  set L' : List ℚ := List.map Nat.cast (L.mapIdx fun i a ↦ a * m ^ i)
  -- If `c` is a digit in the expansion of `n` in base `m`, then `f c` is less than `m`.
  have hcoef {c : ℕ} (hc : c ∈ Nat.digits m n) : f c < m :=
    lt_of_le_of_lt (f.apply_nat_le_self c) (mod_cast Nat.digits_lt_base hm hc)
  calc
  f n = f ((Nat.ofDigits m L : ℕ) : ℚ) := by rw [Nat.ofDigits_digits m n]
    _ = f L'.sum := by simp [L', Nat.ofDigits_eq_sum_mapIdx]
    _ ≤ (L'.map f).sum := listSum_le f L'
    _ ≤ (L.mapIdx fun i _ ↦ m * (f m) ^ i).sum := ?_
  simp only [List.mapIdx_eq_zipIdx_map, List.map_map, L']
  refine List.sum_le_sum fun ⟨a, i⟩ hia ↦ ?_
  replace hia := List.mem_zipIdx hia
  simp only [Function.comp_apply, Nat.cast_mul, Nat.cast_pow, AbsoluteValue.map_mul,
    AbsoluteValue.map_pow]
  refine mul_le_mul_of_nonneg_right ?_ <| pow_nonneg (f.nonneg _) i
  simp only [zero_le, zero_add, true_and] at hia
  exact (hcoef (List.mem_iff_get.mpr ⟨⟨i, hia.1⟩, hia.2.symm⟩)).le

-- ## Step 1: if f is an AbsoluteValue and f n > 1 for some natural n, then f n > 1 for all n ≥ 2

/-- If `f n > 1` for some `n` then `f n > 1` for all `n ≥ 2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca0a5243c86339ac96f9edfd475b31a417e8d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
