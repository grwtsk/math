# map'_succAboveOrderEmb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d6a5dab-a2e2-3cd8-1f80-24a0fd736feb",
  "kind": "lemma",
  "lexical_name": "map'_succAboveOrderEmb",
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
  "slug": "map-succaboveorderemb--a5c31fc93beeb043c24eb4f0",
  "source": {
    "blob": "4a0209da87e3a2fa37f742e13be0e4ed5fee5198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5c31fc93beeb043c24eb4f02fd0f2fe93b1d1c6746a63864992812e5c8b1507",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d6a5dab-a2e2-3cd8-1f80-24a0fd736feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map'_succAboveOrderEmb {n : ℕ} (i : Fin (n + 2)) (x : Fin (n + 3)) :
    map' i.succAboveOrderEmb.toOrderHom x = i.predAbove x := by
  obtain ⟨x, rfl⟩ | rfl := x.eq_castSucc_or_eq_last
  · by_cases! hx : x ≤ i
    · rw [Fin.predAbove_of_le_castSucc _ _ (by simpa), Fin.castPred_castSucc]
      obtain ⟨x, rfl⟩ | rfl := x.eq_castSucc_or_eq_last
      · simp only [map'_eq_castSucc_iff, OrderEmbedding.toOrderHom_coe,
          Fin.succAboveOrderEmb_apply, Fin.castSucc_le_castSucc_iff,
          Fin.castSucc_lt_castSucc_iff]
        constructor
        · obtain hx | rfl := hx.lt_or_eq
          · rwa [Fin.succAbove_of_castSucc_lt]
          · simpa only [Fin.succAbove_castSucc_self] using Fin.castSucc_le_succ x
        · intro j hj
          rwa [Fin.succAbove_of_castSucc_lt _ _ (lt_of_lt_of_le (by simpa) hx),
            Fin.castSucc_lt_castSucc_iff]
      · obtain rfl : i = Fin.last _ := Fin.last_le_iff.1 hx
        simp [map'_eq_last_iff]
    · obtain ⟨x, rfl⟩ := Fin.eq_succ_of_ne_zero (Fin.ne_zero_of_lt hx)
      rw [Fin.predAbove_of_castSucc_lt _ _ (by simpa [Fin.le_castSucc_iff]),
        Fin.pred_castSucc_succ, map'_eq_castSucc_iff]
      simp only [Fin.succAbove_of_lt_succ _ _ hx,
        OrderEmbedding.toOrderHom_coe, Fin.succAboveOrderEmb_apply,
        le_refl, Fin.castSucc_lt_castSucc_iff, true_and]
      intro j hj
      by_cases! h : j.castSucc < i
      · simpa [Fin.succAbove_of_castSucc_lt _ _ h] using hj.le
      · rwa [Fin.succAbove_of_le_castSucc _ _ h, Fin.succ_lt_succ_iff]
  · simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0209da87e3a2fa37f742e13be0e4ed5fee5198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
