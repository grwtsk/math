# searchPartitionLowerAux_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 787,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:094ae6d5-8725-0101-e2a6-48db2357b9ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df4ba139-60b2-e577-8315-c341a6692bab",
  "kind": "theorem",
  "lexical_name": "searchPartitionLowerAux_valid",
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
  "slug": "searchpartitionloweraux-valid--a14205d9857e87f883c94a42",
  "source": {
    "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 787,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a14205d9857e87f883c94a425cb84f493c3ceddc2975f3e084e33a248b53cb34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df4ba139-60b2-e577-8315-c341a6692bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem searchPartitionLowerAux_valid (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (n maxN : ℕ) (_hn : 0 < n) (c : ℚ) (fuel : ℕ) (J : IntervalRat)
    (hfind : searchPartitionLowerAux e I n maxN c fuel = some J)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ J := by
  induction fuel generalizing n with
  | zero => simp [searchPartitionLowerAux] at hfind
  | succ fuel' ih =>
    simp only [searchPartitionLowerAux] at hfind
    by_cases hle : n > maxN
    · simp [hle] at hfind
    · simp only [hle, ↓reduceIte] at hfind
      by_cases hn' : 0 < n
      · simp only [hn', ↓reduceDIte] at hfind
        cases hint : integratePartitionWithInv e I n with
        | none => simp [hint] at hfind
        | some J' =>
          simp only [hint] at hfind
          by_cases hdec : c ≤ J'.lo
          · simp only [decide_eq_true hdec, ↓reduceIte, Option.some.injEq] at hfind
            subst hfind
            exact integratePartitionWithInv_correct e hsupp I n hn' J' hint hInt
          · simp only [decide_eq_false hdec, Bool.false_eq_true, ↓reduceIte] at hfind
            have h2n_pos : 0 < 2 * n := by omega
            exact ih (2 * n) h2n_pos hfind
      · simp [hn'] at hfind

/-- Helper: searchPartitionUpperAux returns a valid integration bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311dd7c19f7fb27658208c4be11e77820aa7f316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
