# Ultrafilter.cauchy_of_totallyBounded'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48506ffa-c194-3cfc-29a0-4f2c81601823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ed8002a-dcf6-b2c5-4adb-2be01cc62b88",
  "kind": "theorem",
  "lexical_name": "Ultrafilter.cauchy_of_totallyBounded'",
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
  "slug": "ultrafilter-cauchy-of-totallybounded--f49105558f6cf710eb215b8b",
  "source": {
    "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 669,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49105558f6cf710eb215b8b900f29dcea9fad4b166f1931a34082dd18f31ee5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed8002a-dcf6-b2c5-4adb-2be01cc62b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ultrafilter.cauchy_of_totallyBounded' (f : Ultrafilter α) (hf : f.TotallyBounded) :
    Cauchy (f : Filter α) :=
  ⟨f.neBot', fun _ ht =>
    let ⟨t', ht'₁, ht'_symm, ht'_t⟩ := comp_symm_of_uniformity ht
    let ⟨i, hi, ht'_f⟩ := hf t' ht'₁
    have : ∃ y ∈ i, { x | (x, y) ∈ t' } ∈ f := (Ultrafilter.eventually_exists_mem_iff hi).1 ht'_f
    let ⟨y, _, hif⟩ := this
    have : {x | (x, y) ∈ t'} ×ˢ {x | (x, y) ∈ t'} ⊆ t' ○ t' :=
      fun ⟨_, _⟩ ⟨(h₁ : (_, y) ∈ t'), (h₂ : (_, y) ∈ t')⟩ => ⟨y, h₁, ht'_symm h₂⟩
    mem_of_superset (prod_mem_prod hif hif) (Subset.trans this ht'_t)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
