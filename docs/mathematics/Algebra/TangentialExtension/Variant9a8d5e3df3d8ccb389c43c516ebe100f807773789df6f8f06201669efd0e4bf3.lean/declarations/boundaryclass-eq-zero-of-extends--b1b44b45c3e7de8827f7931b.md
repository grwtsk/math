# boundaryClass_eq_zero_of_extends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87247c95-277f-7f26-0088-f7154c8e05f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65fc72f8-8cb3-bf22-50b0-04e102f939fe",
  "kind": "theorem",
  "lexical_name": "boundaryClass_eq_zero_of_extends",
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
  "slug": "boundaryclass-eq-zero-of-extends--b1b44b45c3e7de8827f7931b",
  "source": {
    "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 201,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1b44b45c3e7de8827f7931bcee3dcdad32ca6dde04f608417094df23b9713d9",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65fc72f8-8cb3-bf22-50b0-04e102f939fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryClass_eq_zero_of_extends
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure)
    (h : Θ.extendsAcrossTrace θ) :
    letI := Θ.obstructionAddCommGroup
    Θ.boundaryClass θ = 0 := by
  letI := Θ.obstructionAddCommGroup
  exact (Θ.extends_iff_vanishes θ).mp h

/-- The zero framing change leaves both the structure and its obstruction unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e323b29365c6df43ff51bb35ef66ec5474f98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
