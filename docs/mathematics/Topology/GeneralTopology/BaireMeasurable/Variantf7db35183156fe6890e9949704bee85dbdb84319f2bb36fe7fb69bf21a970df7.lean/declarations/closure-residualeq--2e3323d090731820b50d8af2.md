# closure_residualEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02099c94-b15e-d271-964e-cf6c4304a0da",
  "kind": "theorem",
  "lexical_name": "closure_residualEq",
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
  "slug": "closure-residualeq--2e3323d090731820b50d8af2",
  "source": {
    "blob": "68b92b008fdc52227f3f2a0b1050bb7e01b40d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e3323d090731820b50d8af2f5a834c90383a94d3cb1ae3b9cf12b0840a88162",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02099c94-b15e-d271-964e-cf6c4304a0da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_residualEq {s : Set α} (hs : IsLocallyClosed s) : closure s =ᵇ s := by
  rw [Filter.eventuallyEq_set]
  filter_upwards [coborder_mem_residual hs] with x hx
  nth_rewrite 2 [← closure_inter_coborder (s := s)]
  simp [hx]

/-- We say a set is a `BaireMeasurableSet` if it differs from some Borel set by
a meager set. This forms a σ-algebra.

It is equivalent, and a more standard definition, to say that the set differs from
some *open* set by a meager set. See `BaireMeasurableSet.iff_residualEq_isOpen` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b92b008fdc52227f3f2a0b1050bb7e01b40d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
