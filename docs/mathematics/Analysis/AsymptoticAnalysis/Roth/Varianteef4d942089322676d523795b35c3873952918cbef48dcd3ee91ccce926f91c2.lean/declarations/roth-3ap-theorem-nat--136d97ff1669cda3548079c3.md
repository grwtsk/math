# roth_3ap_theorem_nat

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
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7108253-86a7-f181-2368-1d85558b25f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8979de36-423f-251d-b5f1-9274cc4b020a",
  "kind": "theorem",
  "lexical_name": "roth_3ap_theorem_nat",
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
  "slug": "roth-3ap-theorem-nat--136d97ff1669cda3548079c3",
  "source": {
    "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 165,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136d97ff1669cda3548079c38e9053b0f6b3c528d9de2eb87ca9c422bd0a678b",
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

Occurrence: `result:8979de36-423f-251d-b5f1-9274cc4b020a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roth_3ap_theorem_nat (ε : ℝ) (hε : 0 < ε) (hG : cornersTheoremBound (ε / 3) ≤ n)
    (A : Finset ℕ) (hAn : A ⊆ range n) (hAε : ε * n ≤ #A) : ¬ ThreeAPFree (A : Set ℕ) := by
  rintro hA
  rw [← coe_subset, coe_range] at hAn
  have : A = Fin.val '' (Nat.cast '' A : Set (Fin (2 * n).succ)) := by
    rw [Set.image_image, Set.image_congr, Set.image_id]
    simp only [mem_coe, Nat.succ_eq_add_one, Fin.val_natCast, id_eq, Nat.mod_succ_eq_iff_lt]
    rintro a ha
    have := hAn ha
    simp at this
    omega
  rw [this] at hA
  have := Fin.isAddFreimanIso_Iio two_ne_zero (le_refl (2 * n))
  have := hA.of_image this.isAddFreimanHom Fin.val_injective.injOn <| Set.image_subset_iff.2 <|
      hAn.trans fun x hx ↦ Fin.natCast_strictMono (by omega) <| by
        simpa only [coe_range, Set.mem_Iio] using hx
  rw [← coe_image] at this
  refine roth_3ap_theorem (ε / 3) (by positivity) (by simp; omega) _ ?_ this
  calc
    _ = ε / 3 * (2 * n + 1) := by simp
    _ ≤ ε / 3 * (2 * n + n) := by gcongr; simp; unfold cornersTheoremBound at hG; omega
    _ = ε * n := by ring
    _ ≤ #A := hAε
    _ = _ := by
      rw [card_image_of_injOn]
      exact (CharP.natCast_injOn_Iio (Fin (2 * n).succ) (2 * n).succ).mono <| hAn.trans <| by
        simp; omega

open Asymptotics Filter

/-- **Roth's theorem** for `ℕ` as an asymptotic statement.

The maximum density of a 3AP-free set in `{1, ..., n}` goes to zero as `n` tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168711c875fcdfc746b63bdd2af19f27542b86cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
