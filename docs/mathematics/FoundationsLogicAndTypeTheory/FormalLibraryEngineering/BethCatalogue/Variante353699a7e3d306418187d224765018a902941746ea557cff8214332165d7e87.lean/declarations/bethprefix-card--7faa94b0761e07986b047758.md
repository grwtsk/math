# bethPrefix_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f0b2927-df1a-913d-34cd-029c375fe478",
  "kind": "theorem",
  "lexical_name": "bethPrefix_card",
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
  "slug": "bethprefix-card--7faa94b0761e07986b047758",
  "source": {
    "blob": "6c2a25a69e2697b5ce11c302ac8934df27bb0001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variante353699a7e3d306418187d224765018a902941746ea557cff8214332165d7e87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7faa94b0761e07986b0477581035b9dbdda674691fca19fe925e077ba6c40aed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variante353699a7e3d306418187d224765018a902941746ea557cff8214332165d7e87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f0b2927-df1a-913d-34cd-029c375fe478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethPrefix_card (n : ℕ) : #(bethPrefix n) = Cardinal.beth (n : Ordinal) := by
  apply le_antisymm
  · rw [Cardinal.mk_congr (bethPrefixEquiv n)]
    have hFib (i : Fin (n + 1)) : #(bethFiber i.val) ≤ Cardinal.beth (n : Ordinal) := by
      rw [bethFiber_card]
      exact Cardinal.beth_mono (by exact_mod_cast Nat.le_of_lt_succ i.isLt)
    exact (sigma_uniform_bound (fun i : Fin (n + 1) ↦ bethFiber i.val)
      (Cardinal.beth (n : Ordinal)) hFib).trans
      (Cardinal.mul_le_of_le (Cardinal.aleph0_le_beth _)
        (Cardinal.mk_le_aleph0.trans (Cardinal.aleph0_le_beth _)) le_rfl
      )
  · rw [← bethFiber_card n]
    exact Cardinal.mk_le_of_injective (f := fun x : bethFiber n ↦
      (⟨⟨n, x⟩, by change n ≤ n; exact le_rfl⟩ : bethPrefix n)) (by
        intro x y h
        simpa only [Subtype.mk.injEq, Sigma.mk.inj_iff, heq_eq_eq, true_and] using h)

/-- Exact nested reconstruction includes empty and infinite target subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variante353699a7e3d306418187d224765018a902941746ea557cff8214332165d7e87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variante353699a7e3d306418187d224765018a902941746ea557cff8214332165d7e87.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2a25a69e2697b5ce11c302ac8934df27bb0001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
