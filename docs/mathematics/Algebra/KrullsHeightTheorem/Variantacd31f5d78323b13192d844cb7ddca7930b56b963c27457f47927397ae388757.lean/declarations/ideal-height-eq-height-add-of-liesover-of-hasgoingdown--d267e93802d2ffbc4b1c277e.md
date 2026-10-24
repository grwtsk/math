# Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6a28499-f61f-fc85-6bc5-28ba1697cb9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f5d8635-0d0b-c0ab-1a35-b988c7c6a854",
  "kind": "lemma",
  "lexical_name": "Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown",
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
  "slug": "ideal-height-eq-height-add-of-liesover-of-hasgoingdown--d267e93802d2ffbc4b1c277e",
  "source": {
    "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 487,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d267e93802d2ffbc4b1c277e9086207d5370e82ef9c6d1722dc15ab1bf0a0a0a",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f5d8635-0d0b-c0ab-1a35-b988c7c6a854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown [IsNoetherianRing S]
    [Algebra.HasGoingDown R S] (p : Ideal R) [p.IsPrime] (P : Ideal S) [P.IsPrime] [P.LiesOver p] :
    P.height = p.height +
      (P.map (Ideal.Quotient.mk <| p.map (algebraMap R S))).height := by
  refine le_antisymm (height_le_height_add_of_liesOver p P) ?_
  obtain ⟨lp, hlp, hlenp⟩ := p.exists_ltSeries_length_eq_height
  obtain ⟨lq, hlq, hlenq⟩ :=
    (P.map (Quotient.mk (p.map (algebraMap R S)))).exists_ltSeries_length_eq_height
  let l' : LTSeries (PrimeSpectrum S) :=
    lq.map (PrimeSpectrum.comap (Quotient.mk (p.map (algebraMap R S))))
      (RingHom.strictMono_comap_of_surjective Quotient.mk_surjective)
  have : l'.head.asIdeal.LiesOver lp.last.asIdeal := by
    simp only [LTSeries.head_map, hlp, l']
    refine ⟨?_⟩
    refine le_antisymm ?_ ?_
    · rw [← map_le_iff_le_comap, PrimeSpectrum.comap_asIdeal, ← map_le_iff_le_comap]
      simp
    · conv_rhs => rw [LiesOver.over (p := p) (P := P), under_def]
      refine comap_mono (le_trans (comap_mono (lq.head_le_last)) ?_)
      simp [hlq, map_le_iff_le_comap, LiesOver.over (p := p) (P := P)]
  obtain ⟨lp', hlp'len, hlp', _⟩ := exists_ltSeries_of_hasGoingDown lp l'.head.asIdeal
  have : (lp'.smash l' hlp').length = lp.length + lq.length := by simp [hlp'len, l']
  rw [← hlenp, ← hlenq, ← Nat.cast_add, ← this, (⟨P, ‹_›⟩ : PrimeSpectrum S).height_eq_orderHeight]
  apply Order.length_le_height
  simp [hlq, l', ← PrimeSpectrum.asIdeal_le_asIdeal, map_le_iff_le_comap,
    LiesOver.over (p := p) (P := P)]

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa404f1e229a5dc7850ad185ac2c9594fd7418f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
