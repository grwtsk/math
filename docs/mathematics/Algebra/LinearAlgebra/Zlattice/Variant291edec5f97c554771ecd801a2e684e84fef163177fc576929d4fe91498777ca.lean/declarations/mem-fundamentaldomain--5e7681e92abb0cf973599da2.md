# mem_fundamentalDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a93d0fc8296db60ce64bd3dce748436d87e39926",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6e68d62-4eb4-4d0f-67d9-d382a753e268",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f97eddf2-8c79-a568-7438-db316519c419",
  "kind": "theorem",
  "lexical_name": "mem_fundamentalDomain",
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
  "slug": "mem-fundamentaldomain--5e7681e92abb0cf973599da2",
  "source": {
    "blob": "a93d0fc8296db60ce64bd3dce748436d87e39926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e7681e92abb0cf973599da20b63a76b3ee45a33245e396a6347912678469a76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97eddf2-8c79-a568-7438-db316519c419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fundamentalDomain {m : E} :
    m ∈ fundamentalDomain b ↔ ∀ i, b.repr m i ∈ Set.Ico (0 : K) 1 := Iff.rfl
#align zspan.mem_fundamental_domain Zspan.mem_fundamentalDomain

variable [FloorRing K]

section Fintype

variable [Fintype ι]

/-- The map that sends a vector of `E` to the element of the ℤ-lattice spanned by `b` obtained
by rounding down its coordinates on the basis `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93d0fc8296db60ce64bd3dce748436d87e39926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
