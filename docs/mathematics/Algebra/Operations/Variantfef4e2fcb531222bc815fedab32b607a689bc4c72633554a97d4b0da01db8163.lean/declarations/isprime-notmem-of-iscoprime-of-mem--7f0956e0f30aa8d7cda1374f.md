# IsPrime.notMem_of_isCoprime_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1048,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5fe0dc0-86b1-1606-6875-012e8622812a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac35efff-f670-ed61-49e5-b3ed2760197d",
  "kind": "theorem",
  "lexical_name": "IsPrime.notMem_of_isCoprime_of_mem",
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
  "slug": "isprime-notmem-of-iscoprime-of-mem--7f0956e0f30aa8d7cda1374f",
  "source": {
    "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1052,
    "line": 1048,
    "path": "GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f0956e0f30aa8d7cda1374f68513b5ed0fb78b21be2485f5ad1e9de9302eacb",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac35efff-f670-ed61-49e5-b3ed2760197d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1048–1052.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrime.notMem_of_isCoprime_of_mem {I : Ideal R} [I.IsPrime] {x y : R} (h : IsCoprime x y)
    (hx : x ∈ I) : y ∉ I := fun hy ↦
  have ⟨a, b, e⟩ := h
  Ideal.IsPrime.one_notMem ‹_› (e ▸ I.add_mem (I.mul_mem_left a hx) (I.mul_mem_left b hy))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean#L1048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
