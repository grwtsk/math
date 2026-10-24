# corners_theorem_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae2ee49a-8273-a23e-8c4d-d15f1fa6f4f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f459a06c-4f4f-7e2e-8167-c9befd9073bc",
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
  "slug": "corners-theorem-nat--490c51d6a0ae38ec7e85756c",
  "source": {
    "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 104,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490c51d6a0ae38ec7e85756cb3c3f33b0f8cc2fbcfc0f93594e60c9d4de2b2c4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f459a06c-4f4f-7e2e-8167-c9befd9073bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–139.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168711c875fcdfc746b63bdd2af19f27542b86cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
