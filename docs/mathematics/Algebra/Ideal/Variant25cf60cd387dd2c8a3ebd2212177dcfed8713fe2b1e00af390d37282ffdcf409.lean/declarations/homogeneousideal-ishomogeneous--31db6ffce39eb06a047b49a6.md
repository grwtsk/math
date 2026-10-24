# HomogeneousIdeal.isHomogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8f0ddeafe33157127d0c959f648d67c3a432243",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:368ddfac-5b94-4109-0bed-b65950988aa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8766f8ab-6c9e-c520-2c84-82097f9c652c",
  "kind": "theorem",
  "lexical_name": "HomogeneousIdeal.isHomogeneous",
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
  "slug": "homogeneousideal-ishomogeneous--31db6ffce39eb06a047b49a6",
  "source": {
    "blob": "a8f0ddeafe33157127d0c959f648d67c3a432243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 75,
    "path": "GRWTSK/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31db6ffce39eb06a047b49a6f2320ee7be1e30497a807a41fd5c55daa73ce784",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8766f8ab-6c9e-c520-2c84-82097f9c652c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HomogeneousIdeal.isHomogeneous (I : HomogeneousIdeal 𝒜) :
    I.toIdeal.IsHomogeneous 𝒜 := I.is_homogeneous'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f0ddeafe33157127d0c959f648d67c3a432243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
