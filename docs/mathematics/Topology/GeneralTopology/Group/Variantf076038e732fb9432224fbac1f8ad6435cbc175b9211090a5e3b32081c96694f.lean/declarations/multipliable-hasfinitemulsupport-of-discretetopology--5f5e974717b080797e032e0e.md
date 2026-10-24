# Multipliable.hasFiniteMulSupport_of_discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59ab373226bf669c56ef3ab1fda7e63c75176d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9396bf11-f33d-61a3-b2b1-8eac48173d2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91c4917e-f3fe-756a-eca7-c178535c9a00",
  "kind": "theorem",
  "lexical_name": "Multipliable.hasFiniteMulSupport_of_discreteTopology",
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
  "slug": "multipliable-hasfinitemulsupport-of-discretetopology--5f5e974717b080797e032e0e",
  "source": {
    "blob": "59ab373226bf669c56ef3ab1fda7e63c75176d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 373,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5e974717b080797e032e0ec61fba0e5897968da23f2177333219754b306bf5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91c4917e-f3fe-756a-eca7-c178535c9a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multipliable.hasFiniteMulSupport_of_discreteTopology
    {α : Type*} [CommGroup α] [TopologicalSpace α] [DiscreteTopology α]
    {β : Type*} (f : β → α) (h : Multipliable f) : HasFiniteMulSupport f :=
  haveI : IsTopologicalGroup α := ⟨⟩
  h.tendsto_cofinite_one (discreteTopology_iff_singleton_mem_nhds.mp ‹_› 1)

@[deprecated (since := "2026-03-03")] alias
  Multipliable.finite_mulSupport_of_discreteTopology :=
    Multipliable.hasFiniteMulSupport_of_discreteTopology

@[deprecated (since := "2026-03-03")] alias
  Summable.finite_support_of_discreteTopology :=
    Summable.hasFiniteSupport_of_discreteTopology

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variantf076038e732fb9432224fbac1f8ad6435cbc175b9211090a5e3b32081c96694f.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ab373226bf669c56ef3ab1fda7e63c75176d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
