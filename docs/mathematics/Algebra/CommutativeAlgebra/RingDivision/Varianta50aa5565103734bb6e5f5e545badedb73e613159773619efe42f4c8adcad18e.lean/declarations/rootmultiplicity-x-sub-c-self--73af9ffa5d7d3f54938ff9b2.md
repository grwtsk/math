# rootMultiplicity_X_sub_C_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee07ac58a9851d0d892781c8e72a192fc2749bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4a09182-4c75-cf6f-2e5c-a9ca15dd333a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db8425a0-f25b-ee5e-16ff-feec109932ee",
  "kind": "theorem",
  "lexical_name": "rootMultiplicity_X_sub_C_self",
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
  "slug": "rootmultiplicity-x-sub-c-self--73af9ffa5d7d3f54938ff9b2",
  "source": {
    "blob": "ee07ac58a9851d0d892781c8e72a192fc2749bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 155,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73af9ffa5d7d3f54938ff9b2db2f2b88a9bf415d9ffe1c266dfbd73d70a6a558",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8425a0-f25b-ee5e-16ff-feec109932ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootMultiplicity_X_sub_C_self [Nontrivial R] {x : R} :
    rootMultiplicity x (X - C x) = 1 :=
  pow_one (X - C x) ▸ rootMultiplicity_X_sub_C_pow x 1

-- Porting note: swapped instance argument order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee07ac58a9851d0d892781c8e72a192fc2749bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
