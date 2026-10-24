# restrictScalars_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7923c4b6bec0ecde47bf0577088a452858ac3df7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d37290a5-17f9-6a98-74df-9c8b36c69914",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2feccfd-bc88-9d2b-74d2-abe82e81e2ab",
  "kind": "theorem",
  "lexical_name": "restrictScalars_mem",
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
  "slug": "restrictscalars-mem--11dd9fc623b20c9ee6676c00",
  "source": {
    "blob": "7923c4b6bec0ecde47bf0577088a452858ac3df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11dd9fc623b20c9ee6676c008bb6dd5ddb3cff93028e7ef83317c3b7a95a4de4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2feccfd-bc88-9d2b-74d2-abe82e81e2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_mem (V : Submodule R M) (m : M) : m ∈ V.restrictScalars S ↔ m ∈ V :=
  Iff.refl _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7923c4b6bec0ecde47bf0577088a452858ac3df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
