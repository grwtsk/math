# summable_indicator_mod_iff_summable_indicator_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "470ee87f1654513f0284dac03521b8a8f2443cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8377eacb-cd9e-b787-c54b-64a364a42ca5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee18f9d8-d54b-10ed-d77b-f4267881af8c",
  "kind": "lemma",
  "lexical_name": "summable_indicator_mod_iff_summable_indicator_mod",
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
  "slug": "summable-indicator-mod-iff-summable-indicator-mod--28b0e7ad79e5aeb6d43c9d38",
  "source": {
    "blob": "470ee87f1654513f0284dac03521b8a8f2443cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28b0e7ad79e5aeb6d43c9d38da4d5fcc76d777cf48a825e58f6fbb36fa433a99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee18f9d8-d54b-10ed-d77b-f4267881af8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_indicator_mod_iff_summable_indicator_mod {m : ℕ} [NeZero m] {f : ℕ → ℝ}
    (hf : Antitone f) {k : ZMod m} (l : ZMod m)
    (hs : Summable ({n : ℕ | (n : ZMod m) = k}.indicator f)) :
    Summable ({n : ℕ | (n : ZMod m) = l}.indicator f) := by
  by_cases! hf₀ : ∀ n, 0 ≤ f n -- the interesting case
  · rw [← ZMod.natCast_zmod_val k, summable_indicator_mod_iff_summable] at hs
    have hl : (l.val + m : ZMod m) = l := by
      simp only [ZMod.natCast_val, ZMod.cast_id', id_eq, CharP.cast_eq_zero, add_zero]
    rw [← hl, ← Nat.cast_add, summable_indicator_mod_iff_summable]
    exact hs.of_nonneg_of_le (fun _ ↦ hf₀ _)
      fun _ ↦ hf <| Nat.add_le_add Nat.le.refl (k.val_lt.trans_le <| m.le_add_left l.val).le
  · obtain ⟨n, hn⟩ := hf₀
    exact (not_summable_indicator_mod_of_antitone_of_neg hf hn k hs).elim

/-- A decreasing sequence of real numbers is summable on a residue class
if and only if it is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ee87f1654513f0284dac03521b8a8f2443cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
