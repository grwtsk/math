# second_of_chain_is_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28aafbb8-d930-794d-321a-7c4e9b1d75cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d2f4d9e-565e-e1c9-4d83-8acf7fc2707b",
  "kind": "theorem",
  "lexical_name": "second_of_chain_is_irreducible",
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
  "slug": "second-of-chain-is-irreducible--012efcfd8f695db53cf1811a",
  "source": {
    "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:012efcfd8f695db53cf1811a1e50f4aab285e41240ab2816a8e0676cad0aa06e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2f4d9e-565e-e1c9-4d83-8acf7fc2707b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_of_chain_is_irreducible {q : Associates M} {n : ℕ} (hn : n ≠ 0)
    {c : Fin (n + 1) → Associates M} (h₁ : StrictMono c) (h₂ : ∀ {r}, r ≤ q ↔ ∃ i, r = c i)
    (hq : q ≠ 0) : Irreducible (c 1) := by
  rcases n with - | n; · contradiction
  refine (Associates.isAtom_iff (ne_zero_of_dvd_ne_zero hq (h₂.2 ⟨1, rfl⟩))).mp ⟨?_, fun b hb => ?_⟩
  · exact ne_bot_of_gt (h₁ (show (0 : Fin (n + 2)) < 1 from Fin.one_pos))
  obtain ⟨⟨i, hi⟩, rfl⟩ := h₂.1 (hb.le.trans (h₂.2 ⟨1, rfl⟩))
  cases i
  · exact (Associates.isUnit_iff_eq_one _).mp (first_of_chain_isUnit h₁ @h₂)
  · simpa [Fin.lt_iff_val_lt_val] using h₁.lt_iff_lt.mp hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
