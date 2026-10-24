# get_reverse_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:590c6eb1-2250-4311-e838-ec7ed499eb48",
  "kind": "theorem",
  "lexical_name": "get_reverse_aux₂",
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
  "slug": "get-reverse-aux--67080c5cebc6318c5ea991ea",
  "source": {
    "blob": "bb2da47a2f8597262ac23969079ed20f1fa2ed43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1424,
    "line": 1407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67080c5cebc6318c5ea991ea743c4e6b11100feeb9a4e5e8efd9b406d983153f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:590c6eb1-2250-4311-e838-ec7ed499eb48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1407–1424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_reverse_aux₂ :
    ∀ (l r : List α) (i : Nat) (h1) (h2),
      get (reverseAux l r) ⟨length l - 1 - i, h1⟩ = get l ⟨i, h2⟩
  | [], r, i, h1, h2 => absurd h2 (Nat.not_lt_zero _)
  | a :: l, r, 0, h1, _ => by
    have aux := get_reverse_aux₁ l (a :: r) 0
    rw [zero_add] at aux
    exact aux _ (zero_lt_succ _)
  | a :: l, r, i + 1, h1, h2 => by
    have aux := get_reverse_aux₂ l (a :: r) i
    have heq :=
      calc
        length (a :: l) - 1 - (i + 1) = length l - (1 + i) := by rw [add_comm]; rfl
        _ = length l - 1 - i := by rw [← tsub_add_eq_tsub_tsub]
    rw [← heq] at aux
    apply aux
#align list.nth_le_reverse_aux2 List.get_reverse_aux₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean#L1407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2da47a2f8597262ac23969079ed20f1fa2ed43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
