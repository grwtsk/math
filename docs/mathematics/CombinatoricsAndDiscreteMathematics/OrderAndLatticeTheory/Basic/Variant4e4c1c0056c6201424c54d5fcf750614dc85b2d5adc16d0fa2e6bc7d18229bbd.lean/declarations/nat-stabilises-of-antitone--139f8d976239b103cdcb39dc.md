# Nat.stabilises_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d7fe05e-ce5c-c547-1d21-2fabdc1be781",
  "kind": "lemma",
  "lexical_name": "Nat.stabilises_of_antitone",
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
  "slug": "nat-stabilises-of-antitone--139f8d976239b103cdcb39dc",
  "source": {
    "blob": "9f64c6258c0c3d59ca5468040f9fa5be2d1b1568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 736,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139f8d976239b103cdcb39dc100122ebb3c2b1af1329a1aa3bd1ee3e75eeb4a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d7fe05e-ce5c-c547-1d21-2fabdc1be781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.stabilises_of_antitone {f : ℕ → ℕ} (hfmono : Antitone f)
    (hfstab : ∀ m, f m = f (m + 1) → f (m + 1) = f (m + 2)) :
    ∃ n ≤ f 0, ∀ m, n ≤ m → f m = f n := by
  induction h : f 0 using Nat.strongRecOn generalizing f with
  | ind n ih =>
    by_cases heq : f 0 = f 1
    · have flat (j : ℕ) : f j = f (j + 1) := by induction j with grind
      exact ⟨0, Nat.zero_le _, fun m _ => by induction m with grind⟩
    · have hlt : f 1 < f 0 := (hfmono (Nat.le_succ 0)).lt_of_ne' heq
      let g (i : ℕ) := f (i + 1)
      have hg_anti : Antitone g := by grind [Antitone]
      obtain ⟨p, hp, hp'⟩ := ih (f 1) (by grind) hg_anti (by grind) rfl
      refine ⟨p + 1, by omega, fun m hm => ?_⟩
      specialize hp' (m - 1) (by lia)
      grind

/-- A bounded monotone function `ℕ → ℕ` converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f64c6258c0c3d59ca5468040f9fa5be2d1b1568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
