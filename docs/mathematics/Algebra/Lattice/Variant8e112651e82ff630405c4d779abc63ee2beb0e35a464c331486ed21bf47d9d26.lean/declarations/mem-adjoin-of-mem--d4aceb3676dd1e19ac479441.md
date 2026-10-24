# mem_adjoin_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991f3106-3518-b3d0-b4fc-210336a90b1e",
  "kind": "theorem",
  "lexical_name": "mem_adjoin_of_mem",
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
  "slug": "mem-adjoin-of-mem--d4aceb3676dd1e19ac479441",
  "source": {
    "blob": "85defdbbd40b7abc8a065ac810117f7de2e8ecb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 528,
    "path": "GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4aceb3676dd1e19ac4794416cc6356213129602a6895c686a521459fcf2f5c3",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991f3106-3518-b3d0-b4fc-210336a90b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoin_of_mem {s : Set A} {x : A} (hx : x ∈ s) : x ∈ adjoin R s := subset_adjoin hx

/-
The following set-up allows one to write `xₖ : R[x₁, ..., xₙ]` instead of
`(⟨xₖ, "membership proof"⟩ : R[x₁, ..., xₙ])`.

The idea is to recurse through the list of `x₁, ..., xₙ` until we find the appropriate `xₖ`.
By design, it only triggers if the set is of the form `insert x₁ (insert x₂ (...(s)))` or
`{x₁, ..., xₙ}`.
-/

variable {α : Type*}

/-- Supporting class for coercions `xₖ : R[x₁, ..., xₙ]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85defdbbd40b7abc8a065ac810117f7de2e8ecb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
