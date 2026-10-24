# mem_iSup_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e687027de70e7bbeceeffee198c75605be5fc713",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7edee539-428a-a0ec-f504-6598b9cd4aa9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d40555ba-d419-cab1-7b8a-f43e18f4b4e8",
  "kind": "theorem",
  "lexical_name": "mem_iSup_of_mem",
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
  "slug": "mem-isup-of-mem--87c857d0ff35041dca71b5ae",
  "source": {
    "blob": "e687027de70e7bbeceeffee198c75605be5fc713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 423,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c857d0ff35041dca71b5aed380b3a4219d1f0fc16139d365c802ac074f19af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40555ba-d419-cab1-7b8a-f43e18f4b4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iSup_of_mem {ι} {b : M} {N : ι → LieSubmodule R L M} (i : ι) (h : b ∈ N i) :
    b ∈ ⨆ i, N i :=
  (le_iSup N i) h

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e687027de70e7bbeceeffee198c75605be5fc713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
