# shapley_attribution_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06d4ccf674ee6f96a50daf0af22b0400ca3112f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:402a765a-7dcd-3f94-eff2-3e4e37a576b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e7e70ff-82d5-ed8f-a75a-60c5e5730883",
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
  "slug": "shapley-attribution-nonnegative--fa7b6f4ad04bc49ef3e3c909",
  "source": {
    "blob": "06d4ccf674ee6f96a50daf0af22b0400ca3112f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa7b6f4ad04bc49ef3e3c9098cb36dcadb310db76ca3dbd5cc201b929928b25e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e7e70ff-82d5-ed8f-a75a-60c5e5730883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–99.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d4ccf674ee6f96a50daf0af22b0400ca3112f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
