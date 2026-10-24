# char_orthonormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d131ae62882df478bb2aadf013181b4c5b31b328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a19bdb4bf54f69e047c1cf01a6cfb9b057a12c7645b7dd91696fca460be9f0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:365a7f70-2fcb-5f36-46c9-949bf2788b16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cdc1cf4-f58a-e5b3-e0ff-de3fefc30ca6",
  "kind": "theorem",
  "lexical_name": "char_orthonormal",
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
  "slug": "char-orthonormal--ebfa2e0cf063d8f44f427406",
  "source": {
    "blob": "d131ae62882df478bb2aadf013181b4c5b31b328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant8a19bdb4bf54f69e047c1cf01a6cfb9b057a12c7645b7dd91696fca460be9f0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebfa2e0cf063d8f44f4274069b9878b784c10f4b1a9205121d528a272769b195",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Character/Variant8a19bdb4bf54f69e047c1cf01a6cfb9b057a12c7645b7dd91696fca460be9f0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cdc1cf4-f58a-e5b3-e0ff-de3fefc30ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_orthonormal [IsIrreducible ρ] [IsIrreducible σ] :
    (Nat.card G : k)⁻¹ * ∑ g : G, ρ.character g * σ.character g⁻¹ =
      if Nonempty (Equiv σ ρ) then ↑1 else ↑0 := by
  cases isEmpty_or_nonempty (Equiv σ ρ)
  · rw [card_inv_mul_sum_char_mul_char_eq_finrank]
    simpa [finrank_eq_zero_of_subsingleton]
  · obtain φ : σ.Equiv ρ := Classical.choice inferInstance
    rw [char_iso φ, card_inv_mul_sum_char_mul_char_eq_finrank]
    simp

end Orthogonality

end Representation

namespace FDRep

section Monoid

variable {G : Type v} [Monoid G]

/-- The character of a representation `V : FDRep k G` is the function associating to `g : G` the
trace of the linear map `V.ρ g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Character/Variant8a19bdb4bf54f69e047c1cf01a6cfb9b057a12c7645b7dd91696fca460be9f0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Character/Variant8a19bdb4bf54f69e047c1cf01a6cfb9b057a12c7645b7dd91696fca460be9f0a.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d131ae62882df478bb2aadf013181b4c5b31b328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
