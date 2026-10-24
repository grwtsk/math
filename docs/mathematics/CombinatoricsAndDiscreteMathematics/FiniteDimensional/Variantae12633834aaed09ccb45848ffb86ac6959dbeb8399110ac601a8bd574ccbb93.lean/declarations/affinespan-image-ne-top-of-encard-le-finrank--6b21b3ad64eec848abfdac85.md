# affineSpan_image_ne_top_of_encard_le_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bffbe732-5e9f-cadb-da7c-fcb45ddd14ee",
  "kind": "lemma",
  "lexical_name": "affineSpan_image_ne_top_of_encard_le_finrank",
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
  "slug": "affinespan-image-ne-top-of-encard-le-finrank--6b21b3ad64eec848abfdac85",
  "source": {
    "blob": "3b7e5dd2b9b5932210ea292d5e7500dac57ff83a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b21b3ad64eec848abfdac8548105d13d234dc09be65972db622b13626908d6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bffbe732-5e9f-cadb-da7c-fcb45ddd14ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineSpan_image_ne_top_of_encard_le_finrank {s : Set ι} (hsfin : s.Finite)
    (hs : s.encard ≤ finrank k V) (p : ι → P) : affineSpan k (p '' s) ≠ ⊤ := by
  obtain rfl | ⟨i, hi⟩ := s.eq_empty_or_nonempty
  · simp
  set t := (· -ᵥ p i) '' p '' (s \ {i})
  have : Fintype t := ((hsfin.sdiff.image p).image _).fintype
  have hcard : t.toFinset.card < finrank k V := by
    rw [← ENat.natCast_lt_natCast, ← Set.encard_eq_coe_toFinset_card]
    calc
    _ ≤ (s \ {i}).encard := by grind [Set.encard_image_le]
    _ < _ := (hsfin.sdiff.encard_lt_encard (by grind)).trans_le hs
  intro htop
  apply (span_lt_top_of_card_lt_finrank hcard).ne
  rw [← vectorSpan_image_eq_span_vsub_set_right_ne k p hi,
    ← direction_affineSpan, htop, direction_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7e5dd2b9b5932210ea292d5e7500dac57ff83a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
