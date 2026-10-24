# rel_map_of_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ae127fd-3881-a653-ce11-fbb15da161ce",
  "kind": "theorem",
  "lexical_name": "rel_map_of_Icc",
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
  "slug": "rel-map-of-icc--2b88e94c6a7b86d57764bb1e",
  "source": {
    "blob": "af782cea4794d830078e28c42f22bc5780063ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 252,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b88e94c6a7b86d57764bb1ecd29436e806e636c4236c15425f9e4647baf47ad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ae127fd-3881-a653-ce11-fbb15da161ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem rel_map_of_Icc [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G]
    [Archimedean G] [AddGroup H]
    [AddConstMapClass F G H a b] {f : F} {R : H → H → Prop} [IsTrans H R]
    [hR : CovariantClass H H (fun x y ↦ y + x) R] (ha : 0 < a) {l : G}
    (hf : ∀ x ∈ Icc l (l + a), ∀ y ∈ Icc l (l + a), x < y → R (f x) (f y)) :
    ((· < ·) ⇒ R) f f := fun x y hxy ↦ by
  replace hR := hR.elim
  have ha' : 0 ≤ a := ha.le
  -- Shift both points by `m • a` so that `l ≤ x < l + a`
  wlog hx : x ∈ Ico l (l + a) generalizing x y
  · rcases existsUnique_sub_zsmul_mem_Ico ha x l with ⟨m, hm, -⟩
    suffices R (f (x - m • a)) (f (y - m • a)) by simpa using hR (m • b) this
    exact this _ _ (by simpa) hm
  · -- Now find `n` such that `l + n • a < y ≤ l + (n + 1) • a`
    rcases existsUnique_sub_zsmul_mem_Ioc ha y l with ⟨n, hny, -⟩
    rcases lt_trichotomy n 0 with hn | rfl | hn
    · -- Since `l ≤ x ≤ y`, the case `n < 0` is impossible
      refine absurd ?_ hxy.not_ge
      calc
        y ≤ l + a + n • a := sub_le_iff_le_add.1 hny.2
        _ = l + (n + 1) • a := by rw [add_comm n, add_smul, one_smul, add_assoc]
        _ ≤ l + (0 : ℤ) • a := by gcongr; lia
        _ ≤ x := by simpa using hx.1
    · -- If `n = 0`, then `l < y ≤ l + a`, hence we can apply the assumption
      exact hf x (Ico_subset_Icc_self hx) y (by simpa using Ioc_subset_Icc_self hny) hxy
    · -- In the remaining case `0 < n` we use transitivity.
      -- If `R = (· < ·)`, then the proof looks like
      -- `f x < f (l + a) ≤ f (l + n • a) < f y`
      trans f (l + (1 : ℤ) • a)
      · grind
      have hy : R (f (l + n • a)) (f y) := by
        rw [← sub_add_cancel y (n • a), map_add_zsmul, map_add_zsmul]
        refine hR _ <| hf _ ?_ _ (Ioc_subset_Icc_self hny) hny.1; simpa
      rw [← Int.add_one_le_iff, zero_add] at hn
      rcases hn.eq_or_lt with rfl | hn; · assumption
      trans f (l + n • a)
      · refine Int.rel_of_forall_rel_succ_of_lt R (f := (f <| l + · • a)) (fun k ↦ ?_) hn
        simp_rw [add_comm k 1, add_zsmul, ← add_assoc, one_zsmul, map_add_zsmul]
        refine hR (k • b) (hf _ ?_ _ ?_ ?_) <;> simpa
      · assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af782cea4794d830078e28c42f22bc5780063ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
