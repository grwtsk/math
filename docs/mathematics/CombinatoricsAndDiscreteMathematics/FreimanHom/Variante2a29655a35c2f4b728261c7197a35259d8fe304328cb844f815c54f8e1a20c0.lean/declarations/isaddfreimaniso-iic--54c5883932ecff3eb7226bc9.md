# isAddFreimanIso_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9f071c3-f7b8-242a-2d53-bc62c5880956",
  "kind": "lemma",
  "lexical_name": "isAddFreimanIso_Iic",
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
  "slug": "isaddfreimaniso-iic--54c5883932ecff3eb7226bc9",
  "source": {
    "blob": "4cb906e0fa03f924d0eea354f33a3a4aed81348e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 451,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c5883932ecff3eb7226bc910a2cda5f93483a067a8340a613fcd9a056a6bf8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f071c3-f7b8-242a-2d53-bc62c5880956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isAddFreimanIso_Iic (hm : m ≠ 0) (hkmn : m * k ≤ n) :
    IsAddFreimanIso m (Iic (k : Fin (n + 1))) (Iic k) val where
  bijOn.left := by simp [MapsTo, Fin.le_iff_val_le_val, Nat.mod_eq_of_lt, aux hm hkmn]
  bijOn.right.left := val_injective.injOn
  bijOn.right.right x (hx : x ≤ _) :=
    ⟨x, by simpa [le_iff_val_le_val, -val_fin_le, Nat.mod_eq_of_lt, aux hm hkmn, hx.trans_lt]⟩
  map_sum_eq_map_sum s t hsA htA hs ht := by
    have (u : Multiset (Fin (n + 1))) : Nat.castRingHom _ (u.map val).sum = u.sum := by simp
    rw [← this, ← this]
    have {u : Multiset (Fin (n + 1))} (huk : ∀ x ∈ u, x ≤ k) (hu : card u = m) :
        (u.map val).sum < (n + 1) := Nat.lt_succ_iff.2 <| hkmn.trans' <| by
      rw [← hu, ← card_map]
      refine sum_le_card_nsmul (u.map val) k ?_
      simpa [le_iff_val_le_val, -val_fin_le, Nat.mod_eq_of_lt, aux hm hkmn] using huk
    exact ⟨congr_arg _, CharP.natCast_injOn_Iio _ (n + 1) (this hsA hs) (this htA ht)⟩

/-- **No wrap-around principle**.

The first `k` elements of `Fin (n + 1)` are `m`-Freiman isomorphic to the first `k` elements of `ℕ`
assuming there is no wrap-around. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb906e0fa03f924d0eea354f33a3a4aed81348e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
