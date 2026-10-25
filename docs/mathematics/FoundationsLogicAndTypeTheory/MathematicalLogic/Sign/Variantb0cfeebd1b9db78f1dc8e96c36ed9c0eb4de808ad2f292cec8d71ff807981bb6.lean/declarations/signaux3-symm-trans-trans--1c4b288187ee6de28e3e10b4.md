# signAux3_symm_trans_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95da7825-f945-ce0d-83e3-59a5a5d5bd34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4d0237d-ae97-dae8-0607-89ffe17e9a31",
  "kind": "theorem",
  "lexical_name": "signAux3_symm_trans_trans",
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
  "slug": "signaux3-symm-trans-trans--1c4b288187ee6de28e3e10b4",
  "source": {
    "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c4b288187ee6de28e3e10b4fa96954c706b7ae6344a47c90999998b5f118627",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4d0237d-ae97-dae8-0607-89ffe17e9a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signAux3_symm_trans_trans [Finite α] [DecidableEq β] [Finite β] (f : Perm α) (e : α ≃ β)
    {s : Multiset α} {t : Multiset β} (hs : ∀ x, x ∈ s) (ht : ∀ x, x ∈ t) :
    signAux3 ((e.symm.trans f).trans e) ht = signAux3 f hs := by
  induction t, s using Quotient.inductionOn₂
  change signAux2 _ _ = signAux2 _ _
  rcases Finite.exists_equiv_fin β with ⟨n, ⟨e'⟩⟩
  rw [← signAux_eq_signAux2 _ _ e' fun _ _ => ht _,
    ← signAux_eq_signAux2 _ _ (e.trans e') fun _ _ => hs _]
  simp [trans_assoc]

/-- `SignType.sign` of a permutation returns the signature or parity of a permutation, `1` for even
permutations, `-1` for odd permutations. It is the unique surjective group homomorphism from
`Perm α` to the group with two elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d53713a1ba03e8f8028ace3bc2a45ab8ab9016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
