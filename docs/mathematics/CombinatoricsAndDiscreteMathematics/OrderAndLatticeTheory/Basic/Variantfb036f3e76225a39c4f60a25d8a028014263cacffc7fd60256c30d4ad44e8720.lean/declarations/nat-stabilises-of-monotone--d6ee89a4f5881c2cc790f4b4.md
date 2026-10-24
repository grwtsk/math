# Nat.stabilises_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:625fd80d-9f7a-cfd7-04f3-7bb5084cb418",
  "kind": "lemma",
  "lexical_name": "Nat.stabilises_of_monotone",
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
  "slug": "nat-stabilises-of-monotone--d6ee89a4f5881c2cc790f4b4",
  "source": {
    "blob": "5d8e4a108d3a03a49634ba5ef0589ee2e76372b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 711,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6ee89a4f5881c2cc790f4b4e0afe5a5d63d58eac0bcaf91b4fcfa9af67c155a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:625fd80d-9f7a-cfd7-04f3-7bb5084cb418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.stabilises_of_monotone {f : ℕ → ℕ} {b n : ℕ} (hfmono : Monotone f) (hfb : ∀ m, f m ≤ b)
    (hfstab : ∀ m, f m = f (m + 1) → f (m + 1) = f (m + 2)) (hbn : b ≤ n) : f n = f b := by
  obtain ⟨m, hmb, hm⟩ : ∃ m ≤ b, f m = f (m + 1) := by
    contrapose! hfb
    let rec strictMono : ∀ m ≤ b + 1, m ≤ f m
    | 0, _ => Nat.zero_le _
    | m + 1, hmb => (strictMono _ <| m.le_succ.trans hmb).trans_lt <| (hfmono m.le_succ).lt_of_ne <|
        hfb _ <| Nat.le_of_succ_le_succ hmb
    exact ⟨b + 1, strictMono _ le_rfl⟩
  replace key : ∀ k : ℕ, f (m + k) = f (m + k + 1) ∧ f (m + k) = f m := fun k =>
    Nat.rec ⟨hm, rfl⟩ (fun k ih => ⟨hfstab _ ih.1, ih.1.symm.trans ih.2⟩) k
  replace key : ∀ k ≥ m, f k = f m := fun k hk =>
    (congr_arg f (Nat.add_sub_of_le hk)).symm.trans (key (k - m)).2
  exact (key n (hmb.trans hbn)).trans (key b hmb).symm

/-- A bounded monotone function `ℕ → ℕ` converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d8e4a108d3a03a49634ba5ef0589ee2e76372b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
