# isRat_inv_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8c3b5d68dcfcc898789479c18e1da7a6959f7cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ad38b32-e83a-2ad5-88c9-d8b8494f929b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:670eda83-8463-b7e5-cb85-92ea71faff5c",
  "kind": "theorem",
  "lexical_name": "isRat_inv_neg",
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
  "slug": "israt-inv-neg--b9cb27a07e41fead83e54c01",
  "source": {
    "blob": "e8c3b5d68dcfcc898789479c18e1da7a6959f7cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9cb27a07e41fead83e54c01d415afe537acc3a11cdb6982672944d7075c9b38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:670eda83-8463-b7e5-cb85-92ea71faff5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRat_inv_neg {α} [DivisionRing α] [CharZero α] {a : α} {n d : ℕ} :
    IsRat a (.negOfNat (Nat.succ n)) d → IsRat a⁻¹ (.negOfNat d) (Nat.succ n) := by
  rintro ⟨_, rfl⟩
  simp only [Int.negOfNat_eq]
  have := invertibleOfNonzero (α := α) (Nat.cast_ne_zero.2 (Nat.succ_ne_zero n))
  generalize Nat.succ n = n at *
  use this; simp only [Int.ofNat_eq_coe, Int.cast_neg,
    Int.cast_natCast, invOf_eq_inv, inv_neg, neg_mul, mul_inv_rev, inv_inv]

open Lean

attribute [local instance] monadLiftOptionMetaM in
/-- The `norm_num` extension which identifies expressions of the form `a⁻¹`,
such that `norm_num` successfully recognises `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c3b5d68dcfcc898789479c18e1da7a6959f7cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
