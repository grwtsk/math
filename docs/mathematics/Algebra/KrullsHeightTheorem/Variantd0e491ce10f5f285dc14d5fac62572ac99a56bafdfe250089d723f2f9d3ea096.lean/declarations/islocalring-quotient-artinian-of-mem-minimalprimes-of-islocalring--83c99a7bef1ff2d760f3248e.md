# IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:546f1c8e-03c1-5bdf-cba2-e7e0e31a0e5e",
  "kind": "lemma",
  "lexical_name": "IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing",
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
  "slug": "islocalring-quotient-artinian-of-mem-minimalprimes-of-islocalring--83c99a7bef1ff2d760f3248e",
  "source": {
    "blob": "77222e768ad258d9ae2f4af1c3640777739fbb34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c99a7bef1ff2d760f3248eee8ae28cbe53773462017dff7070b53587a545ef",
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

Occurrence: `result:546f1c8e-03c1-5bdf-cba2-e7e0e31a0e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing
    [IsLocalRing R] (I : Ideal R) (hp : IsLocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    IsArtinianRing (R ⧸ I) :=
  have : Ring.KrullDimLE 0 (R ⧸ I) := Ring.krullDimLE_zero_iff.mpr fun J prime ↦
    Ideal.isMaximal_of_isIntegral_of_isMaximal_comap _ <| by
      convert IsLocalRing.maximalIdeal.isMaximal R
      rw [Ideal.minimalPrimes, Set.mem_setOf] at hp
      have := prime.comap (Ideal.Quotient.mk I)
      exact hp.eq_of_le ⟨this, .trans (by simp) (Ideal.ker_le_comap _)⟩ (le_maximalIdeal this.1)
  IsNoetherianRing.isArtinianRing_of_krullDimLE_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77222e768ad258d9ae2f4af1c3640777739fbb34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
