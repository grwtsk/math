# shapley_attribution_efficiency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f69508c0-72e7-193d-d3cc-e1087a7a7f23",
  "kind": "theorem",
  "lexical_name": "shapley_attribution_efficiency",
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
  "slug": "shapley-attribution-efficiency--5495587c9fd03f17d3969e0d",
  "source": {
    "blob": "551c74d3273528dc66043995ab3ba6d664997da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc1dea879362bd596df4516b0555a8debe70f4032619e24149dc7290d82c737ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5495587c9fd03f17d3969e0d1aa0c6f8ecaeb56a067800a74a0560cc86c4e2fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc1dea879362bd596df4516b0555a8debe70f4032619e24149dc7290d82c737ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f69508c0-72e7-193d-d3cc-e1087a7a7f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shapley_attribution_efficiency
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    twoPrimeAttributionFirst capacity first second +
        twoPrimeAttributionSecond capacity first second =
      capacity.value (insert first {second}) -
        capacity.value ∅ := by
  have terminal_cuts_equal :
      insert second ({first} : Finset Prime) =
        insert first ({second} : Finset Prime) := by
    ext prime
    simp [or_comm]
  funext coordinate
  simp only [
    twoPrimeAttributionFirst,
    twoPrimeAttributionSecond,
    PositiveCapacity.increment,
    Finset.insert_empty,
    Pi.add_apply,
    Pi.sub_apply,
  ]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc1dea879362bd596df4516b0555a8debe70f4032619e24149dc7290d82c737ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc1dea879362bd596df4516b0555a8debe70f4032619e24149dc7290d82c737ea.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c74d3273528dc66043995ab3ba6d664997da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
