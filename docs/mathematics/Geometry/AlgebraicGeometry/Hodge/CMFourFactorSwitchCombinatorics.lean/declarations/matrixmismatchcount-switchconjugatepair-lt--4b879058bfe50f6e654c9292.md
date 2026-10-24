# matrixMismatchCount_switchConjugatePair_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2472adbd-7ffb-2ea3-e368-48448b43363a",
  "kind": "theorem",
  "lexical_name": "matrixMismatchCount_switchConjugatePair_lt",
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
  "slug": "matrixmismatchcount-switchconjugatepair-lt--4b879058bfe50f6e654c9292",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 623,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b879058bfe50f6e654c9292ec09e4f8d792cf3bf6932cf7a244c25ae5a44df0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2472adbd-7ffb-2ea3-e368-48448b43363a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixMismatchCount_switchConjugatePair_lt
    (x y : I → G → ℤ)
    (hx : IsOddMatrix conj x)
    (hy : IsOddMatrix conj y)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    matrixMismatchCount
        (switchConjugatePair conj x g i.1 j.1) y <
      matrixMismatchCount x y := by
  let x' := switchConjugatePair conj x g i.1 j.1
  have hx' : IsOddMatrix conj x' :=
    switchConjugatePair_odd conj hconj x hx g hg i.1 j.1
  have hsel :
      columnMismatchCount (fun r => x' r g) (fun r => y r g) <
        columnMismatchCount (fun r => x r g) (fun r => y r g) :=
    columnMismatchCount_switchConjugatePair_lt conj x y g i j
  unfold matrixMismatchCount
  apply Finset.sum_lt_sum
  · intro h _
    by_cases hhg : h = g
    · subst h
      exact hsel.le
    · by_cases hhcg : h = conj g
      · subst h
        rw [columnMismatchCount_conj_eq conj hx' hy g,
          columnMismatchCount_conj_eq conj hx hy g]
        exact hsel.le
      ·
        rw [columnMismatchCount_switchConjugatePair_eq_of_ne
          conj x y g h i.1 j.1 hhg hhcg]
  · exact ⟨g, Finset.mem_univ _, hsel⟩

/-- If an odd sign matrix has at least one row, conjugation has no fixed
column. This is forced by x(cg) = -x(g) and x(g) in {+1,-1}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
