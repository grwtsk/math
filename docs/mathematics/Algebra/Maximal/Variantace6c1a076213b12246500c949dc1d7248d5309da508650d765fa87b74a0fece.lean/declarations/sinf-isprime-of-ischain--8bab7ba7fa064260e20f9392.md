# sInf_isPrime_of_isChain

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
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cdb1b24-b521-827b-67cb-da9e68c073d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b41c192-0c89-5cce-84ee-30b3809a884d",
  "kind": "theorem",
  "lexical_name": "sInf_isPrime_of_isChain",
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
  "slug": "sinf-isprime-of-ischain--8bab7ba7fa064260e20f9392",
  "source": {
    "blob": "7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 101,
    "path": "GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bab7ba7fa064260e20f9392a391601c6dca683306affc45e0d358f2d04dcbdc",
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

Occurrence: `result:5b41c192-0c89-5cce-84ee-30b3809a884d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_isPrime_of_isChain {s : Set (Ideal α)} (hs : s.Nonempty) (hs' : IsChain (· ≤ ·) s)
    (H : ∀ p ∈ s, p.IsPrime) : (sInf s).IsPrime :=
  ⟨fun e =>
    let ⟨x, hx⟩ := hs
    (H x hx).ne_top (eq_top_iff.mpr (e.symm.trans_le (sInf_le hx))),
    fun e =>
    or_iff_not_imp_left.mpr fun hx => by
      rw [Ideal.mem_sInf] at hx e ⊢
      push_neg at hx
      obtain ⟨I, hI, hI'⟩ := hx
      intro J hJ
      rcases hs'.total hI hJ with h | h
      · exact h (((H I hI).mem_or_mem (e hI)).resolve_left hI')
      · exact ((H J hJ).mem_or_mem (e hJ)).resolve_left fun x => hI' <| h x⟩

end Ideal

end Semiring

section CommSemiring

variable {a b : α}

-- A separate namespace definition is needed because the variables were historically in a different
-- order.
namespace Ideal

variable [CommSemiring α] (I : Ideal α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
