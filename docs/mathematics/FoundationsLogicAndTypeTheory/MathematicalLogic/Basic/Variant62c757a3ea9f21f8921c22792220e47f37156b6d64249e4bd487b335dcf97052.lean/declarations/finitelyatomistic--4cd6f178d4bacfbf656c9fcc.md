# finitelyAtomistic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e00ef8a4-4060-2386-4bc7-a6232e093ac9",
  "kind": "lemma",
  "lexical_name": "finitelyAtomistic",
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
  "slug": "finitelyatomistic--4cd6f178d4bacfbf656c9fcc",
  "source": {
    "blob": "ff2ea50fde9b54c3468ff776ab5b3523185039e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd6f178d4bacfbf656c9fcc31994a7c43fc274aec4f402027f58968cf88a904",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e00ef8a4-4060-2386-4bc7-a6232e093ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finitelyAtomistic : ∀ s : Finset (LieIdeal R L), ↑s ⊆ {I : LieIdeal R L | IsAtom I} →
    ∀ I : LieIdeal R L, I ≤ s.sup id → ∃ t ⊆ s, I = t.sup id := by
  intro s hs I hI
  let S := {I : LieIdeal R L | IsAtom I}
  obtain rfl | hI := hI.eq_or_lt
  · exact ⟨s, Finset.Subset.rfl, rfl⟩
  -- We assume that `I` is strictly smaller than the supremum of `s`.
  -- Hence there must exist an atom `J` that is not contained in `I`.
  obtain ⟨J, hJs, hJI⟩ : ∃ J ∈ s, ¬ J ≤ I := by
    by_contra! H
    exact hI.ne (le_antisymm hI.le (s.sup_le H))
  classical
  let s' := s.erase J
  have hs' : s' ⊂ s := Finset.erase_ssubset hJs
  have hs'S : ↑s' ⊆ S := Set.Subset.trans (Finset.coe_subset.mpr hs'.subset) hs
  -- If we show that `I` is contained in the supremum `K` of the complement of `J` in `s`,
  -- then we are done by recursion.
  set K := s'.sup id
  suffices I ≤ K by
    obtain ⟨t, hts', htI⟩ := finitelyAtomistic s' hs'S I this
    exact ⟨t, hts'.trans hs'.subset, htI⟩
  -- Since `I` is contained in the supremum of `J` with the supremum of `s'`,
  -- any element `x` of `I` can be written as `y + z` for some `y ∈ J` and `z ∈ K`.
  intro x hx
  obtain ⟨y, hy, z, hz, rfl⟩ : ∃ y ∈ id J, ∃ z ∈ K, y + z = x := by
    rw [← LieSubmodule.mem_sup, ← Finset.sup_insert, Finset.insert_erase hJs]
    exact hI.le hx
  -- If we show that `y` is contained in the center of `J`,
  -- then we find `x = z`, and hence `x` is contained in the supremum of `s'`.
  -- Since `x` was arbitrary, we have shown that `I` is contained in the supremum of `s'`.
  suffices ⟨y, hy⟩ ∈ LieAlgebra.center R J by
    have _inst := isSimple_of_isAtom J (hs hJs)
    simp_all
  -- To show that `y` is in the center of `J`,
  -- we show that any `j ∈ J` brackets to `0` with `z` and with `x = y + z`.
  -- By a simple computation, that implies `⁅j, y⁆ = 0`, for all `j`, as desired.
  intro j
  suffices ⁅(j : L), z⁆ = 0 ∧ ⁅(j : L), y + z⁆ = 0 by
    rw [lie_add, this.1, add_zero] at this
    ext
    exact this.2
  rw [← LieSubmodule.mem_bot (R := R) (L := L), ← LieSubmodule.mem_bot (R := R) (L := L)]
  constructor
  -- `j` brackets to `0` with `z`, since `⁅j, z⁆` is contained in `⁅J, K⁆ ≤ J ⊓ K`,
  -- and `J ⊓ K = ⊥` by the independence of the atoms.
  · apply (sSupIndep_isAtom.disjoint_sSup (hs hJs) hs'S (Finset.notMem_erase _ _)).le_bot
    apply LieSubmodule.lie_le_inf
    apply LieSubmodule.lie_mem_lie j.2
    simpa only [K, Finset.sup_id_eq_sSup] using hz
  -- By similar reasoning, `j` brackets to `0` with `x = y + z ∈ I`, if we show `J ⊓ I = ⊥`.
  suffices J ⊓ I = ⊥ by
    apply this.le
    apply LieSubmodule.lie_le_inf
    exact LieSubmodule.lie_mem_lie j.2 hx
  -- Indeed `J ⊓ I = ⊥`, since `J` is an atom that is not contained in `I`.
  apply ((hs hJs).le_iff.mp _).resolve_right
  · contrapose hJI
    rw [← hJI]
    exact inf_le_right
  exact inf_le_left
termination_by s => s.card
decreasing_by exact Finset.card_lt_card hs'

variable (R L) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2ea50fde9b54c3468ff776ab5b3523185039e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
