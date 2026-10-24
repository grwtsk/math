# partialSups_disjointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "862c05aa0674700a18075613536b321147044892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c335622-26d3-65c2-b1cb-75fd7bdc921a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa2e8dc0-5f7c-dfc6-d062-a89471dde464",
  "kind": "theorem",
  "lexical_name": "partialSups_disjointed",
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
  "slug": "partialsups-disjointed--fc9000cd2028c063a479b36b",
  "source": {
    "blob": "862c05aa0674700a18075613536b321147044892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc9000cd2028c063a479b36b768510ba63a1ec95703a5c99b7e28f336c47171b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2e8dc0-5f7c-dfc6-d062-a89471dde464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialSups_disjointed (f : ι → α) :
    partialSups (disjointed f) = partialSups f := by
  -- This seems to be much more awkward than the case of linear orders, because the supremum
  -- in the definition of `disjointed` can involve multiple "paths" through the poset.
  classical
  -- We argue by induction on the size of `Iio i`.
  suffices ∀ r i (hi : #(Iio i) ≤ r), partialSups (disjointed f) i = partialSups f i from
    OrderHom.ext _ _ (funext fun i ↦ this _ i le_rfl)
  intro r i hi
  induction r generalizing i with
  | zero =>
    -- Base case: `n` is minimal, so `partialSups f i = partialSups (disjointed f) n = f i`.
    simp only [Nat.le_zero, card_eq_zero] at hi
    simp only [partialSups_apply, Iic_eq_cons_Iio, hi, disjointed_apply, sup'_eq_sup, sup_cons,
      sup_empty, sdiff_bot]
  | succ n ih =>
    -- Induction step: first WLOG arrange that `#(Iio i) = r + 1`
    rcases lt_or_eq_of_le hi with hn | hn
    · exact ih _ <| Nat.le_of_lt_succ hn
    simp only [partialSups_apply (disjointed f), Iic_eq_cons_Iio, sup'_eq_sup, sup_cons]
    -- Key claim: we can write `Iio i` as a union of (finitely many) `Iic` intervals.
    have hun : (Iio i).biUnion Iic = Iio i := by
      ext r; simpa using ⟨fun ⟨a, ha⟩ ↦ ha.2.trans_lt ha.1, fun hr ↦ ⟨r, hr, le_rfl⟩⟩
    -- Use claim and `sup_biUnion` to rewrite the supremum in the definition of `disjointed f`
    -- in terms of suprema over `Iic`'s. Then the RHS is a `sup` over `partialSups`, which we
    -- can rewrite via the induction hypothesis.
    rw [← hun, sup_biUnion, sup_congr rfl (g := partialSups f)]
    · simp only [funext (partialSups_apply f), sup'_eq_sup, ← sup_biUnion, hun]
      simp only [disjointed, sdiff_sup_self, Iic_eq_cons_Iio, sup_cons]
    · simp only [partialSups, sup'_eq_sup, OrderHom.coe_mk] at ih ⊢
      refine fun x hx ↦ ih x ?_
      -- Remains to show `∀ x in Iio i, #(Iio x) ≤ r`.
      rw [← Nat.lt_add_one_iff, ← hn]
      apply lt_of_lt_of_le (b := #(Iic x))
      · simpa only [Iic_eq_cons_Iio, card_cons] using Nat.lt_succ_self _
      · refine card_le_card (fun r hr ↦ ?_)
        simp only [mem_Iic, mem_Iio] at hx hr ⊢
        exact hr.trans_lt hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862c05aa0674700a18075613536b321147044892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
