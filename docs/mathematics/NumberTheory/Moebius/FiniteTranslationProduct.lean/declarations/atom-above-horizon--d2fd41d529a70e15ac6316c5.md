# atom_above_horizon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1057073e-bc1d-2712-7f12-c90b31d2d08f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ed7ab50-5444-7f9d-e50c-63577670741c",
  "kind": "theorem",
  "lexical_name": "atom_above_horizon",
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
  "slug": "atom-above-horizon--d2fd41d529a70e15ac6316c5",
  "source": {
    "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 284,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2fd41d529a70e15ac6316c5c5c819dd316452ba08d71b32ca409a48a75599ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed7ab50-5444-7f9d-e50c-63577670741c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_above_horizon (T u : ℝ) (hu : u ≤ T) (n : ℕ)
    (hn : 0 < n) (hN : ¬n ≤ Nat.floor (Real.exp T)) : atom n u = 0 := by
  have he : Real.exp T < (n : ℝ) :=
    (Nat.floor_lt (Real.exp_pos T).le).mp (lt_of_not_ge hN)
  have hlog : ¬Real.log (n : ℝ) ≤ u := by
    intro h
    have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
    have hle := (Real.log_le_iff_le_exp hnreal).mp (h.trans hu)
    exact (not_le_of_gt he) hle
  simp [atom, hlog]

/-- NI, for the literal finite Möbius pickup at every real horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c4ebd57b68876c8b7831b95d772c05090abbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
