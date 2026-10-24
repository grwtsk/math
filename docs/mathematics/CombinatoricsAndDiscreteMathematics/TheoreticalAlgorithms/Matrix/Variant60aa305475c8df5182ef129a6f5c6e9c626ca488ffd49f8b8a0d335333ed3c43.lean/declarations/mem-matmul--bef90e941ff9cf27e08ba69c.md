# mem_matmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c18142-3436-230f-28b3-63c3f2db8e8c",
  "kind": "theorem",
  "lexical_name": "mem_matmul",
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
  "slug": "mem-matmul--bef90e941ff9cf27e08ba69c",
  "source": {
    "blob": "4a0c77078e33a0c6e76ef7e317303eaf7214c045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 455,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef90e941ff9cf27e08ba69ca189b502dc299e1dabee184b1c1478f9ba8cdb2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c18142-3436-230f-28b3-63c3f2db8e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_matmul {n m p : Nat}
    (A : IntervalMatrix n m) (B : IntervalMatrix m p)
    (Ar : Matrix (Fin n) (Fin m) ℝ) (Br : Matrix (Fin m) (Fin p) ℝ)
    (exp : Int)
    (hA : A.mem exp Ar) (hB : B.mem exp Br) :
    (A.matmul B).mem (exp + exp) (Ar * Br) := by
  intro i k
  simp only [Matrix.mul_apply]

  -- Define helper functions for the products
  let prod_lo (j : Fin m) : Int :=
    (IntervalMatrix.intervalMul
      (A.lo.get i j i.isLt j.isLt) (A.hi.get i j i.isLt j.isLt)
      (B.lo.get j k j.isLt k.isLt) (B.hi.get j k j.isLt k.isLt)).1
  let prod_hi (j : Fin m) : Int :=
    (IntervalMatrix.intervalMul
      (A.lo.get i j i.isLt j.isLt) (A.hi.get i j i.isLt j.isLt)
      (B.lo.get j k j.isLt k.isLt) (B.hi.get j k j.isLt k.isLt)).2

  -- Step 1: For each j, Ar[i,j] * Br[j,k] is bounded by intVal prod_lo/hi (exp+exp)
  have h_term : ∀ j : Fin m,
      intVal (prod_lo j) (exp + exp) ≤ Ar i j * Br j k ∧
      Ar i j * Br j k ≤ intVal (prod_hi j) (exp + exp) := fun j => by
    have hAj := hA i j
    have hBj := hB j k
    exact intervalMul_sound_scaled
      (A.lo.get i j i.isLt j.isLt) (A.hi.get i j i.isLt j.isLt)
      (B.lo.get j k j.isLt k.isLt) (B.hi.get j k j.isLt k.isLt)
      (Ar i j) (Br j k) exp
      hAj.1 hAj.2 hBj.1 hBj.2

  -- Step 2: Sum inequality - sum of bounds bounds the sum
  have h_sum := sum_interval_le
    (fun j => intVal (prod_lo j) (exp + exp))
    (fun j => Ar i j * Br j k)
    (fun j => intVal (prod_hi j) (exp + exp))
    h_term

  -- Step 3: Relate the foldl computation to intVal of sum
  -- C_lo[i,k] = foldl (fun sum j => sum + prod_lo j) 0
  -- We need: intVal (C_lo[i,k]) (exp+exp) = ∑ j, intVal (prod_lo j) (exp+exp)

  -- First, show the foldl equals sum of integers
  have h_lo_foldl : (A.matmul B).lo.get i k i.isLt k.isLt =
      (List.finRange m).foldl (fun sum j => sum + prod_lo j) 0 := by
    simp only [IntervalMatrix.matmul, IntMatrix.ofFn_get]
    rfl
  have h_hi_foldl : (A.matmul B).hi.get i k i.isLt k.isLt =
      (List.finRange m).foldl (fun sum j => sum + prod_hi j) 0 := by
    simp only [IntervalMatrix.matmul, IntMatrix.ofFn_get]
    rfl

  -- Convert foldl to Finset.sum
  have h_lo_sum : (List.finRange m).foldl (fun sum j => sum + prod_lo j) 0 =
      Finset.univ.sum prod_lo := finRange_foldl_add_eq_sum prod_lo
  have h_hi_sum : (List.finRange m).foldl (fun sum j => sum + prod_hi j) 0 =
      Finset.univ.sum prod_hi := finRange_foldl_add_eq_sum prod_hi

  -- intVal distributes over sum: intVal (∑ x) e = ∑ (intVal x e)
  have h_intVal_sum_lo : intVal (Finset.univ.sum prod_lo) (exp + exp) =
      Finset.univ.sum (fun j => intVal (prod_lo j) (exp + exp)) := by
    simp only [intVal, Int.cast_sum, Finset.sum_mul]
  have h_intVal_sum_hi : intVal (Finset.univ.sum prod_hi) (exp + exp) =
      Finset.univ.sum (fun j => intVal (prod_hi j) (exp + exp)) := by
    simp only [intVal, Int.cast_sum, Finset.sum_mul]

  -- Combine everything
  simp only [IntMatrix.valAt, h_lo_foldl, h_hi_foldl, h_lo_sum, h_hi_sum,
             h_intVal_sum_lo, h_intVal_sum_hi]
  exact h_sum

end LeanCert.ML.Optimized
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0c77078e33a0c6e76ef7e317303eaf7214c045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
