# shapley_attribution_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4cc7d48-5df3-8905-baa0-9e540f59037a",
  "kind": "theorem",
  "lexical_name": "shapley_attribution_nonnegative",
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
  "slug": "shapley-attribution-nonnegative--915c0579d0c424304cb3f972",
  "source": {
    "blob": "7f645d11827b476ea4d8c35718011c8d44e15c30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TwoElementShapley/Nonnegativity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:915c0579d0c424304cb3f9728ef282619f798a5db702722ad9d543a3739d1ef2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TwoElementShapley/Nonnegativity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4cc7d48-5df3-8905-baa0-9e540f59037a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shapley_attribution_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime)
    (first_registered : first ∈ capacity.primeUniverse.primes)
    (second_registered : second ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative
        (twoPrimeAttributionFirst capacity first second) ∧
      OperatorNonnegative
        (twoPrimeAttributionSecond capacity first second) := by
  have empty_in_universe :
      (∅ : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.empty_subset _
  have first_cut_in_universe :
      ({first} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr first_registered
  have second_cut_in_universe :
      ({second} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr second_registered
  have first_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      first
      empty_in_universe
      first_registered
  have first_after_second :=
    capacity_increment_nonnegative
      capacity
      {second}
      first
      second_cut_in_universe
      first_registered
  have second_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      second
      empty_in_universe
      second_registered
  have second_after_first :=
    capacity_increment_nonnegative
      capacity
      {first}
      second
      first_cut_in_universe
      second_registered
  constructor
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (first_from_empty coordinate)
        (first_after_second coordinate))
      (by norm_num)
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (second_from_empty coordinate)
        (second_after_first coordinate))
      (by norm_num)

end GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TwoElementShapley/Nonnegativity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TwoElementShapley/Nonnegativity.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f645d11827b476ea4d8c35718011c8d44e15c30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
