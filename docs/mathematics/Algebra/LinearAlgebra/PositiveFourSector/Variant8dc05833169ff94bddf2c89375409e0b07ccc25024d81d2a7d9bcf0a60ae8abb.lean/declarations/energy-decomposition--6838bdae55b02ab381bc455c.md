# energy_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8e02ebb752932aae0869309c4d40c0257260a32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98c22559-a325-ea53-d0a1-9f3b343ea081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fd823bf-f5b9-d956-5049-c78b882e1b5c",
  "kind": "theorem",
  "lexical_name": "energy_decomposition",
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
  "slug": "energy-decomposition--6838bdae55b02ab381bc455c",
  "source": {
    "blob": "d8e02ebb752932aae0869309c4d40c0257260a32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 229,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6838bdae55b02ab381bc455cda827de2f47e9e49bc73d0dedc3dffe986330f3f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd823bf-f5b9-d956-5049-c78b882e1b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_decomposition (x : V) :
    G.form x x =
      G.form (C.sectorPP x) (C.sectorPP x) +
      G.form (C.sectorPM x) (C.sectorPM x) +
      G.form (C.sectorMP x) (C.sectorMP x) +
      G.form (C.sectorMM x) (C.sectorMM x) := by
  calc
    G.form x x =
        G.form
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x)
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x) := by
            simp only [sectorPP_apply, sectorPM_apply, sectorMP_apply, sectorMM_apply,
              C.involutions.four_sector_decomposition x]
    _ =
        G.form (C.sectorPP x) (C.sectorPP x) +
        G.form (C.sectorPM x) (C.sectorPM x) +
        G.form (C.sectorMP x) (C.sectorMP x) +
        G.form (C.sectorMM x) (C.sectorMM x) :=
      G.four_sum_energy
        (C.sectorPP x) (C.sectorPM x) (C.sectorMP x) (C.sectorMM x)
        (C.orthogonal_PP_PM x x)
        (C.orthogonal_PP_MP x x)
        (C.orthogonal_PP_MM x x)
        (C.orthogonal_PM_MP x x)
        (C.orthogonal_PM_MM x x)
        (C.orthogonal_MP_MM x x)

/-- The positive geometry carried by the distinguished (+,-) sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e02ebb752932aae0869309c4d40c0257260a32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
