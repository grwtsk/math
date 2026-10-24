# isTopologicalBasis_Iic_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cdd957ccc15e090a37f4cdfe081ec9eadc8fe4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea82c46a-ad1c-180a-5feb-9a2a94e67079",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34203751-ed06-ef52-fe3a-0bbe59319acc",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis_Iic_principal",
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
  "slug": "istopologicalbasis-iic-principal--a9aeebdb6c48897c39beb554",
  "source": {
    "blob": "6cdd957ccc15e090a37f4cdfe081ec9eadc8fe4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9aeebdb6c48897c39beb554929464410c6b8f90d517b78f802c88a372e94472",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34203751-ed06-ef52-fe3a-0bbe59319acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalBasis_Iic_principal :
    IsTopologicalBasis (range (Iic ∘ 𝓟 : Set α → Set (Filter α))) :=
  { exists_subset_inter := by
      rintro _ ⟨s, rfl⟩ _ ⟨t, rfl⟩ l hl
      exact ⟨Iic (𝓟 s) ∩ Iic (𝓟 t), ⟨s ∩ t, by simp⟩, hl, Subset.rfl⟩
    sUnion_eq := sUnion_eq_univ_iff.2 fun _ => ⟨Iic ⊤, ⟨univ, congr_arg Iic principal_univ⟩,
      mem_Iic.2 le_top⟩
    eq_generateFrom := rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cdd957ccc15e090a37f4cdfe081ec9eadc8fe4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
