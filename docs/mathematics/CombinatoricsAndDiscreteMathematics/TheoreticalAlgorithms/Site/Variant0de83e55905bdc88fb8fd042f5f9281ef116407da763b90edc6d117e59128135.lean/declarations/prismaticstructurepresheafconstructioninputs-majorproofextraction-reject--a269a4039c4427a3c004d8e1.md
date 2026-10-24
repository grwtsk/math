# PrismaticStructurePresheafConstructionInputs.majorProofExtraction_rejects_weak_status

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6795e064-38ee-27a9-f349-5b80c55967d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c23b9d0-7679-22b6-1891-69d82343caa4",
  "kind": "theorem",
  "lexical_name": "PrismaticStructurePresheafConstructionInputs.majorProofExtraction_rejects_weak_status",
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
  "slug": "prismaticstructurepresheafconstructioninputs-majorproofextraction-reject--a269a4039c4427a3c004d8e1",
  "source": {
    "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1378,
    "line": 1355,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a269a4039c4427a3c004d8e1489a26118a265aaec2375108422881e39024ad93",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c23b9d0-7679-22b6-1891-69d82343caa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1355–1378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrismaticStructurePresheafConstructionInputs.majorProofExtraction_rejects_weak_status
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForMajorProof) :
    I.ODelta.status ≠ ConstructionStatus.externalAssumption ∧
      I.ODeltaBar.status ≠ ConstructionStatus.externalAssumption ∧
      I.ODelta.status ≠ ConstructionStatus.placeholderInput ∧
      I.ODeltaBar.status ≠ ConstructionStatus.placeholderInput := by
  exact
    ⟨(I.rejects_externalAssumption h).1,
      (I.rejects_externalAssumption h).2,
      (I.rejects_placeholderInput h).1,
      (I.rejects_placeholderInput h).2⟩

/--
Actual section of a ring-valued structure presheaf.

Unlike labelled `DescriptorPresheafSection` below, this section is a value of the
dependent section type supplied by `StructurePresheafOfRingsData`.  This is the
theorem-facing section notion for future sheafhood and comparison proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean#L1355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca219aa7dc0c4802d46e697f161618f5ff96f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
