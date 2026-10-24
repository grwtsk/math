# exists_le_prime_notMem_of_isIdempotentElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5fc70dc-0c28-1b9a-ddef-8055c9b6f03c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07529fe2-7081-3d50-55ec-be4bb567b8cf",
  "kind": "theorem",
  "lexical_name": "exists_le_prime_notMem_of_isIdempotentElem",
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
  "slug": "exists-le-prime-notmem-of-isidempotentelem--70c0b51a0faa8db08e718dc0",
  "source": {
    "blob": "7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 200,
    "path": "GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c0b51a0faa8db08e718dc0a30030527ccf309f5a36d0a96ec026edb09ab6f6",
  "verification": {
    "reference": "docs/verification/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07529fe2-7081-3d50-55ec-be4bb567b8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_prime_notMem_of_isIdempotentElem (a : α) (ha : IsIdempotentElem a) (haI : a ∉ I) :
    ∃ p : Ideal α, p.IsPrime ∧ I ≤ p ∧ a ∉ p :=
  have : Disjoint (I : Set α) (Submonoid.powers a) := Set.disjoint_right.mpr <| by
    rw [ha.coe_powers]
    rintro _ (rfl|rfl)
    exacts [I.ne_top_iff_one.mp (ne_of_mem_of_not_mem' Submodule.mem_top haI).symm, haI]
  have ⟨p, h1, h2, h3⟩ := exists_le_prime_disjoint _ _ this
  ⟨p, h1, h2, Set.disjoint_right.mp h3 (Submonoid.mem_powers a)⟩

@[deprecated (since := "2025-05-24")]
alias exists_le_prime_nmem_of_isIdempotentElem := exists_le_prime_notMem_of_isIdempotentElem

end Ideal

end CommSemiring

section DivisionSemiring

variable {K : Type u} [DivisionSemiring K] (I : Ideal K)

namespace Ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
