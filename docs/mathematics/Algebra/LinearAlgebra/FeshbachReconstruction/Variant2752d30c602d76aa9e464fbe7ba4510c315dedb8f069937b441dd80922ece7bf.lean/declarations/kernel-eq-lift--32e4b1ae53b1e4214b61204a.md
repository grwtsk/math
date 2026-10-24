# kernel_eq_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "417c38f15b08001a0b820b985bea7e4caf91627f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b477f763-d282-4e41-d0d3-b42e62cad5b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3e5de18-ff33-a9c0-62ca-b643c890f66a",
  "kind": "theorem",
  "lexical_name": "kernel_eq_lift",
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
  "slug": "kernel-eq-lift--32e4b1ae53b1e4214b61204a",
  "source": {
    "blob": "417c38f15b08001a0b820b985bea7e4caf91627f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e4b1ae53b1e4214b61204a3fcfaaade7a011abae2f772303306fa457260331",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e5de18-ff33-a9c0-62ca-b643c890f66a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_eq_lift (A : Matrix ι ι R) (U : Matrix ι κ R)
    (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (z : (ι → R) × (κ → R)) :
    blockMap A U C B z = 0 ↔
      ∃ x : ι → R, (schur A U C B).mulVec x = 0 ∧ lift C B x = z := by
  rw [blockMap_eq_zero_iff]
  constructor
  · rintro ⟨hx, hy⟩
    exact ⟨z.1, hx, Prod.ext rfl hy.symm⟩
  · rintro ⟨x, hx, rfl⟩
    exact ⟨hx, rfl⟩

/-- The full kernel and the Schur kernel are linearly equivalent, preserving
kernel dimension whenever a finite-dimensional field specialization is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `417c38f15b08001a0b820b985bea7e4caf91627f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
