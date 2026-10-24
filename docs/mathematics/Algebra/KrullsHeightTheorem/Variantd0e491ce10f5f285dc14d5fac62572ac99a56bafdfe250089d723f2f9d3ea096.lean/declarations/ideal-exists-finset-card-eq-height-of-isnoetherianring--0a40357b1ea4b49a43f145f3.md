# Ideal.exists_finset_card_eq_height_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a8ab21-e097-b43d-1f7a-924b1e25f4c6",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_finset_card_eq_height_of_isNoetherianRing",
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
  "slug": "ideal-exists-finset-card-eq-height-of-isnoetherianring--0a40357b1ea4b49a43f145f3",
  "source": {
    "blob": "77222e768ad258d9ae2f4af1c3640777739fbb34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 276,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a40357b1ea4b49a43f145f300a8eda33dfc1f041029bb9823a98f99fac1f5bf",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a8ab21-e097-b43d-1f7a-924b1e25f4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_finset_card_eq_height_of_isNoetherianRing (p : Ideal R) [p.IsPrime] :
    ∃ s : Finset R, p ∈ (span s).minimalPrimes ∧ s.card = p.height := by
  obtain ⟨I, hI, hr⟩ := (p.height_le_iff_exists_minimalPrimes <| p.height).mp le_rfl
  have hs : I.generators.Finite := (IsNoetherian.noetherian I).finite_generators
  refine ⟨hs.toFinset, by rwa [hs.coe_toFinset, span, I.span_generators], ?_⟩
  rw [← Set.ncard_eq_toFinset_card (hs := hs), (IsNoetherian.noetherian I).generators_ncard]
  refine le_antisymm ?_ ?_
  · rw [Submodule.fg_iff_spanRank_eq_spanFinrank.mpr (IsNoetherian.noetherian I)] at hr
    exact Cardinal.nat_le_ofENat.mp hr
  · convert_to p.height ≤ I.spanRank.toENat
    · symm
      simpa [Submodule.fg_iff_spanRank_eq_spanFinrank] using (IsNoetherian.noetherian I)
    · exact I.height_le_spanRank_toENat_of_mem_minimal_primes _ hI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77222e768ad258d9ae2f4af1c3640777739fbb34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
