# card_isUnramified_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af53d29e-fa3a-3de2-9c4b-4dbbc935e1ed",
  "kind": "lemma",
  "lexical_name": "card_isUnramified_compl",
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
  "slug": "card-isunramified-compl--343e44bc4363ef483f2b6ffd",
  "source": {
    "blob": "86f95a1669795aaa94cc8c27a51437b1c637d46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 506,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343e44bc4363ef483f2b6ffdc9833df2bb870fe0dd00d67324eb94662f109b86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af53d29e-fa3a-3de2-9c4b-4dbbc935e1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_isUnramified_compl [NumberField k] [IsGalois k K] :
    #({w : InfinitePlace K | w.IsUnramified k} : Finset _)ᶜ =
      #({w : InfinitePlace k | w.IsUnramifiedIn K} : Finset _)ᶜ * (finrank k K / 2) := by
  rw [← IsGalois.card_aut_eq_finrank,
    Finset.card_eq_sum_card_fiberwise (f := (comap · (algebraMap k K)))
    (t := ({w : InfinitePlace k | w.IsUnramifiedIn K} : Finset _)ᶜ), ← smul_eq_mul, ← sum_const]
  · refine sum_congr rfl (fun w hw ↦ ?_)
    obtain ⟨w, rfl⟩ := comap_surjective (K := K) w
    rw [compl_filter, mem_filter_univ] at hw
    trans Finset.card (MulAction.orbit Gal(K/k) w).toFinset
    · congr; ext w'
      rw [mem_filter, compl_filter, mem_filter_univ, @eq_comm _ (comap w' _), Set.mem_toFinset,
        mem_orbit_iff, and_iff_right_iff_imp]
      intro e; rwa [← isUnramifiedIn_comap, ← e]
    · rw [Nat.card_eq_fintype_card,
        ← MulAction.card_orbit_mul_card_stabilizer_eq_card_group _ w,
        ← Nat.card_eq_fintype_card (α := Stab w), InfinitePlace.card_stabilizer, ite_eq_right,
        Nat.mul_div_cancel _ zero_lt_two, Set.toFinset_card]
      rwa [← isUnramifiedIn_comap]
  · simp [Set.MapsTo, isUnramifiedIn_comap]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f95a1669795aaa94cc8c27a51437b1c637d46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
