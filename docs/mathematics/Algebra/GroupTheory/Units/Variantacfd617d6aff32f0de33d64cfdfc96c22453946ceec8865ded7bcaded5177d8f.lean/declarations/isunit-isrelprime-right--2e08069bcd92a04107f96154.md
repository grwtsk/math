# IsUnit.isRelPrime_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71583e8747030645e280a67e52881f4e334d80dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcd378f2-f1af-a4a8-ed9b-e96c7f1accb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d8e35c1-87d6-9d72-634c-3fd271852626",
  "kind": "theorem",
  "lexical_name": "IsUnit.isRelPrime_right",
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
  "slug": "isunit-isrelprime-right--2e08069bcd92a04107f96154",
  "source": {
    "blob": "71583e8747030645e280a67e52881f4e334d80dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 154,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e08069bcd92a04107f961549ffb6b19fb2ee76f46768eb0d0e2da222765d351",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8e35c1-87d6-9d72-634c-3fd271852626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnit.isRelPrime_right (h : IsUnit y) : IsRelPrime x y := h.isRelPrime_left.symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71583e8747030645e280a67e52881f4e334d80dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
