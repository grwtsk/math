# finiteSquarefreeDensity_difference_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a3757b7-3a36-bfd3-e044-96d56edbd914",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7e8663b-1e1c-5272-e0cb-792ff9deea31",
  "kind": "theorem",
  "lexical_name": "finiteSquarefreeDensity_difference_le",
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
  "slug": "finitesquarefreedensity-difference-le--13ddaf144e494b417bc29ba0",
  "source": {
    "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 273,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ddaf144e494b417bc29ba08bde0d222fe5eb631c0b33905daada12de7894b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7e8663b-1e1c-5272-e0cb-792ff9deea31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSquarefreeDensity_difference_le (h Y Z : ℕ) (hh : 1 ≤ h) (hYZ : Y ≤ Z) :
    |finiteSquarefreeDensity h Z - finiteSquarefreeDensity h Y| ≤
      ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
  classical
  have hunion : Icc 1 Z = Icc 1 Y ∪ Ioc Y Z := by
    ext d
    simp only [mem_union, mem_Icc, mem_Ioc]
    omega
  have hdisj : Disjoint (Icc 1 Y) (Ioc Y Z) := by
    apply disjoint_left.mpr
    intro d hd1 hd2
    have h1 := (mem_Icc.mp hd1).2
    have h2 := (mem_Ioc.mp hd2).1
    omega
  rw [finiteSquarefreeDensity, finiteSquarefreeDensity, hunion, sum_union hdisj,
    mul_add, add_sub_cancel_left, abs_mul, abs_of_nonneg (coprimeDensity_nonneg h hh)]
  calc
    _ ≤ |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      mul_le_of_le_one_left (abs_nonneg _) (coprimeDensity_le_one h hh)
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| := abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
