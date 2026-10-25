# resRec_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58aed50f-5ea5-03d1-7fb3-096722e68e65",
  "kind": "theorem",
  "lexical_name": "resRec_true_iff",
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
  "slug": "resrec-true-iff--f9b0f66f90ec752cc38301ac",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2312,
    "line": 2258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b0f66f90ec752cc38301ac76542133c83ad0be4eca64ef405a1ee95c6e4867",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58aed50f-5ea5-03d1-7fb3-096722e68e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2258–2312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resRec_true_iff (x y : BitVec w) (s : Nat) (hs : s < w) (hs' : 0 < s) :
    resRec x y s hs hs' = true ↔ ∃ (k : Nat), ∃ (h : k ≤ s), ∃ (_ : 0 < k), aandRec x y k (by omega) := by
  unfold resRec
  rcases s with _|s
  · omega
  · rcases s
    · case zero =>
      constructor
      · intro ha
        exists 1, by omega, by omega
      · intro hr
        obtain ⟨k, hk, hk', hk''⟩ := hr
        simp only [show k = 1 by omega] at hk''
        exact hk''
    · case succ s =>
      induction s
      · case zero =>
        unfold resRec
        simp only [Nat.zero_add, Nat.reduceAdd, or_eq_true]
        constructor
        · intro h
          rcases h with h|h
          · exists 1, by omega, by omega
          · exists 2, by omega, by omega
        · intro h
          obtain ⟨k, hk, hk', hk''⟩ := h
          have h : k = 1 ∨ k = 2 := by omega
          rcases h with h|h
          <;> simp only [h] at hk''
          <;> simp [hk'']
      · case succ s ihs =>
        specialize ihs (by omega) (by omega)
        unfold resRec
        simp only [or_eq_true, ihs]
        constructor
        · intro h
          rcases h with h|h
          · obtain ⟨k, hk, hk', hk''⟩ := h
            exists k, by omega, by omega
          · exists s + 1 + 1 + 1, by omega, by omega
        · intro h
          obtain ⟨k, hk, hk', hk''⟩ := h
          by_cases h' : x.aandRec y (s + 1 + 1 + 1) (by omega) = true
          · simp [h']
          · simp only [h', false_eq_true, _root_.or_false]
            by_cases h'' : k ≤ s + 1 + 1
            · exists k, h'', by omega
            · have : k = s + 1 + 1 + 1 := by omega
              simp_all

/-- If the sum of the leading zeroes of two bitvecs with bitwidth `w` is less than or equal to
  (`w - 2`), then the preliminary overflow flag is true and their unsigned multiplication overflows.
  The explanation is in `Efficient integer multiplication overflow detection circuits`
  https://ieeexplore.ieee.org/abstract/document/987767
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L2258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
