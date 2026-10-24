# radical_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "504ed46b806871efac71ec62c9c0001a809ad247",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d043a50e-33a4-bf69-8121-f0f46745801c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd6fd5d1-6bea-a3c7-cbec-852af080ad67",
  "kind": "theorem",
  "lexical_name": "radical_finrank_eq",
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
  "slug": "radical-finrank-eq--86bbec1f79e7e057c02a3bf7",
  "source": {
    "blob": "504ed46b806871efac71ec62c9c0001a809ad247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86bbec1f79e7e057c02a3bf7607d9fe879f7301e4a86ef8f757a83fd420cb182",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6fd5d1-6bea-a3c7-cbec-852af080ad67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radical_finrank_eq (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    Module.finrank ℝ (fullForm A C B).radical =
      Module.finrank ℝ (reducedForm A C B).radical :=
  QuadraticMap.Equivalent.rank_radical_eq ⟨formEquiv A C B hB⟩

/-- Exact equality of all three real inertia entries for the finite packet and
its Schur/complement direct sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `504ed46b806871efac71ec62c9c0001a809ad247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
