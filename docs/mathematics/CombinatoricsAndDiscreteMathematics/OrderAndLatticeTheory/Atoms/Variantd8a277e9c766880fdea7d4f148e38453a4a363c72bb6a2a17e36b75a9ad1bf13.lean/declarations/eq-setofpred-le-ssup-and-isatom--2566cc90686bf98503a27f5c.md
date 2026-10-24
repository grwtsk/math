# eq_setOfPred_le_sSup_and_isAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "948a90b197a8e6f9dbe1da11036a3acd02cd780a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9536f5cb-5b41-e74d-d594-3d1e23869c37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4e8c716-88f1-ca22-374b-d809fbe12c82",
  "kind": "lemma",
  "lexical_name": "eq_setOfPred_le_sSup_and_isAtom",
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
  "slug": "eq-setofpred-le-ssup-and-isatom--2566cc90686bf98503a27f5c",
  "source": {
    "blob": "948a90b197a8e6f9dbe1da11036a3acd02cd780a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 697,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2566cc90686bf98503a27f5ce00c0cda2fde8866bbd213538f2a576e9ba14fde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4e8c716-88f1-ca22-374b-d809fbe12c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_setOfPred_le_sSup_and_isAtom {α} [CompleteAtomicBooleanAlgebra α] {S : Set α}
    (hS : ∀ a ∈ S, IsAtom a) : S = {a | a ≤ sSup S ∧ IsAtom a} := by
  ext a
  refine ⟨fun h => ⟨le_sSup h, hS a h⟩, fun ⟨hale, hatom⟩ => ?_⟩
  obtain ⟨b, hbS, hba⟩ := (IsAtom.le_sSup hatom).mp hale
  obtain rfl | rfl := (hS b hbS).le_iff.mp hba
  · simpa using hatom.1
  assumption

@[deprecated (since := "2026-07-09")]
alias eq_setOf_le_sSup_and_isAtom := eq_setOfPred_le_sSup_and_isAtom

/--
Representation theorem for complete atomic boolean algebras:
For a complete atomic Boolean algebra `α`, `toSetOfIsAtom` is an order isomorphism
between `α` and the set of subsets of its atoms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a90b197a8e6f9dbe1da11036a3acd02cd780a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
