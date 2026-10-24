# restrict_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "309a9c1b119e2d22598aabdf29872e1e2dfc85eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6e9986e-b28e-d1ab-1f77-d378a56a9971",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4074fbb8-817d-a3d5-fa1b-924b7f339cf1",
  "kind": "theorem",
  "lexical_name": "restrict_singleton",
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
  "slug": "restrict-singleton--120aae2c431ce9753480d493",
  "source": {
    "blob": "309a9c1b119e2d22598aabdf29872e1e2dfc85eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:120aae2c431ce9753480d4930b3761e41def667374cbb8148c8db24eb9fbac1d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4074fbb8-817d-a3d5-fa1b-924b7f339cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_singleton (μ : Measure α) (a : α) : μ.restrict {a} = μ {a} • dirac a := by
  ext1 s hs
  by_cases ha : a ∈ s
  · have : s ∩ {a} = {a} := by simpa
    simp [*]
  · have : s ∩ {a} = ∅ := inter_singleton_eq_empty.2 ha
    simp [*]
#align measure_theory.measure.restrict_singleton MeasureTheory.Measure.restrict_singleton

/-- If `f` is a map with countable codomain, then `μ.map f` is a sum of Dirac measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309a9c1b119e2d22598aabdf29872e1e2dfc85eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
