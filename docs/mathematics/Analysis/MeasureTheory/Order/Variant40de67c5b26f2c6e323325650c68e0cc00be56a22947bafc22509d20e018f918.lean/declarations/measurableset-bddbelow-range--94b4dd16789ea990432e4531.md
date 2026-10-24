# measurableSet_bddBelow_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0296639-bb2c-767b-990e-421302396090",
  "kind": "lemma",
  "lexical_name": "measurableSet_bddBelow_range",
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
  "slug": "measurableset-bddbelow-range--94b4dd16789ea990432e4531",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 884,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b4dd16789ea990432e45315ef5e7e9de8aa68ed45474c96cddc50ebe2d542e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0296639-bb2c-767b-990e-421302396090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 884–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_bddBelow_range {ι} [Countable ι] {f : ι → δ → α} (hf : ∀ i, Measurable (f i)) :
    MeasurableSet {b | BddBelow (range (fun i ↦ f i b))} :=
  measurableSet_bddAbove_range (α := αᵒᵈ) hf

end LinearOrder

section ConditionallyCompleteLattice

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
