# corners_theorem_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e12b568-d716-c71e-4461-80543205ede2",
  "kind": "theorem",
  "lexical_name": "corners_theorem_nat",
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
  "slug": "corners-theorem-nat--f73426cc72adeee989847592",
  "source": {
    "blob": "61b864640791ebb4661a1330ddc564dbb0df1380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 112,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f73426cc72adeee98984759233e1f39d4b93727a3ff63dae9d72f046af840980",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e12b568-d716-c71e-4461-80543205ede2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corners_theorem_nat (hε : 0 < ε) (hn : cornersTheoremBound (ε / 9) ≤ n)
    (A : Finset (ℕ × ℕ)) (hAn : A ⊆ range n ×ˢ range n) (hAε : ε * n ^ 2 ≤ #A) :
    ¬ IsCornerFree (A : Set (ℕ × ℕ)) := by
  rintro hA
  rw [← coe_subset, coe_product] at hAn
  have : A = Prod.map Fin.val Fin.val ''
      (Prod.map Nat.cast Nat.cast '' A : Set (Fin (2 * n).succ × Fin (2 * n).succ)) := by
    rw [Set.image_image, Set.image_congr, Set.image_id]
    simp only [mem_coe, Nat.succ_eq_add_one, Prod.map_apply, Fin.val_natCast, id_eq, Prod.forall,
      Prod.mk.injEq, Nat.mod_succ_eq_iff_lt]
    rintro a b hab
    have := hAn hab
    simp at this
    omega
  rw [this] at hA
  have := Fin.isAddFreimanIso_Iio two_ne_zero (le_refl (2 * n))
  have := hA.of_image this.isAddFreimanHom Fin.val_injective.injOn <| by
    refine Set.image_subset_iff.2 <| hAn.trans fun x hx ↦ ?_
    simp only [coe_range, Set.mem_prod, Set.mem_Iio] at hx
    exact ⟨Fin.natCast_strictMono (by omega) hx.1, Fin.natCast_strictMono (by omega) hx.2⟩
  rw [← coe_image] at this
  refine corners_theorem (ε / 9) (by positivity) (by simp; omega) _ ?_ this
  calc
    _ = ε / 9 * (2 * n + 1) ^ 2 := by simp
    _ ≤ ε / 9 * (2 * n + n) ^ 2 := by gcongr; simp; unfold cornersTheoremBound at hn; omega
    _ = ε * n ^ 2 := by ring
    _ ≤ #A := hAε
    _ = _ := by
      rw [card_image_of_injOn]
      have : Set.InjOn Nat.cast (range n) :=
        (CharP.natCast_injOn_Iio (Fin (2 * n).succ) (2 * n).succ).mono (by simp; omega)
      exact (this.prodMap this).mono hAn

/-- **Roth's theorem** for finite abelian groups.

The maximum density of a 3AP-free set in `G` goes to zero as `|G|` tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b864640791ebb4661a1330ddc564dbb0df1380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
