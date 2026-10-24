# Subperm.exists_of_length_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:543263c3-6785-f0fc-712b-d8a81cbbd2f0",
  "kind": "theorem",
  "lexical_name": "Subperm.exists_of_length_lt",
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
  "slug": "subperm-exists-of-length-lt--d95f2e10840a6979597df7ca",
  "source": {
    "blob": "881e18989c325b57d44d3ebca85497117adc440a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95f2e10840a6979597df7ca290ca42088097a509284642766c8e144d6b06008",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:543263c3-6785-f0fc-712b-d8a81cbbd2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subperm.exists_of_length_lt {l₁ l₂ : List α} (s : l₁ <+~ l₂) (h : length l₁ < length l₂) :
    ∃ a, a :: l₁ <+~ l₂ := by
  obtain ⟨l, p, s⟩ := s
  suffices length l < length l₂ → ∃ a : α, a :: l <+~ l₂ from
    (this <| p.symm.length_eq ▸ h).imp fun a => (p.cons a).subperm_right.1
  clear h p l₁
  induction s with intro h
  | slnil => cases h
  | cons a s IH =>
    match Nat.lt_or_eq_of_le (Nat.le_of_lt_succ h) with
    | .inl h => exact (IH h).imp fun a s => s.trans (sublist_cons_self _ _).subperm
    | .inr h => exact ⟨a, s.eq_of_length h ▸ .refl _⟩
  | cons_cons b _ IH =>
    exact (IH <| Nat.lt_of_succ_lt_succ h).imp fun a s =>
      (Perm.swap ..).subperm_right.1 <| (subperm_cons _).2 s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881e18989c325b57d44d3ebca85497117adc440a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
