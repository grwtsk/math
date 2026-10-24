# mem_forwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa3a37ab-0c87-49b4-4dff-7f6f3067234a",
  "kind": "theorem",
  "lexical_name": "mem_forwardInterval",
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
  "slug": "mem-forwardinterval--ee318cdb0f18985e40cc2d16",
  "source": {
    "blob": "509dbaa177c055ae4b3146e0b11fcb4a18cd3708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant02a97ec19ddf8d05517008e788124e03e56d31cfc4587ff085fd4d5117cf53bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee318cdb0f18985e40cc2d160f2d58055a08a3992a624c2a245945e279024a86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant02a97ec19ddf8d05517008e788124e03e56d31cfc4587ff085fd4d5117cf53bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa3a37ab-0c87-49b4-4dff-7f6f3067234a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_forwardInterval {l : Layer} {xs : List ℝ} {Is : IntervalVector}
    (hwf : l.WellFormed)
    (hdim : l.inputDim = Is.length)
    (hxlen : xs.length = Is.length)
    (hmem : ∀ i, (hi : i < Is.length) → xs[i]'(by omega) ∈ Is[i]'hi)
    (prec : Int) (hprec : prec ≤ 0 := by norm_num) :
    ∀ i, (hi : i < min l.outputDim l.bias.length) →
      (forwardReal l xs)[i]'(by rw [forwardReal_length]; exact hi) ∈
      (forwardInterval l Is prec)[i]'(by rw [forwardInterval_length]; exact hi) := by
  intro i hi
  simp only [forwardReal, forwardInterval, reluVector]
  -- Weight matrix has compatible dimensions
  have hWcols : ∀ row ∈ l.weights, row.length = Is.length := by
    intro row hrow
    have h := hwf.1 row hrow
    omega
  -- Matrix-vector multiplication soundness
  have hlinear := mem_matVecMul hWcols hxlen hmem prec hprec
  -- Lengths
  have hlinear_len : (realMatVecMul l.weights xs).length = l.outputDim := by
    simp [realMatVecMul, outputDim]
  have hlinearI_len : (matVecMul l.weights Is prec).length = l.outputDim := by
    simp [matVecMul, outputDim]
  -- Bias addition soundness
  have hlen_eq : (realMatVecMul l.weights xs).length = (matVecMul l.weights Is prec).length := by
    simp [realMatVecMul, matVecMul]
  have hblen_eq : l.bias.length = (matVecMul l.weights Is prec).length := by
    simp [matVecMul]; exact hwf.2
  have hbias := mem_addBias hlen_eq hblen_eq (fun j hj => by
    have hj' : j < l.weights.length := by simp [matVecMul] at hj; exact hj
    exact hlinear j hj') prec hprec
  -- Apply ReLU
  simp only [List.getElem_map]
  have hi_out : i < l.outputDim := Nat.lt_of_lt_of_le hi (Nat.min_le_left _ _)
  have hi_int : i < (matVecMul l.weights Is prec).length := by simp [matVecMul]; exact hi_out
  exact mem_relu (hbias i hi_int)

end Layer

/-- A two-layer network for simple examples -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant02a97ec19ddf8d05517008e788124e03e56d31cfc4587ff085fd4d5117cf53bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant02a97ec19ddf8d05517008e788124e03e56d31cfc4587ff085fd4d5117cf53bf.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509dbaa177c055ae4b3146e0b11fcb4a18cd3708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
