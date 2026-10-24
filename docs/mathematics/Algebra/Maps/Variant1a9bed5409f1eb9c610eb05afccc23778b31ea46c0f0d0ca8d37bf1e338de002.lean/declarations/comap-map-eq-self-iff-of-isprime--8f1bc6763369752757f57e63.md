# comap_map_eq_self_iff_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:645da9ed-c37c-937b-d2d3-da7ec6fe8922",
  "kind": "lemma",
  "lexical_name": "comap_map_eq_self_iff_of_isPrime",
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
  "slug": "comap-map-eq-self-iff-of-isprime--8f1bc6763369752757f57e63",
  "source": {
    "blob": "78b13e000b0f7a434acd12f304133cec8247015a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 635,
    "path": "GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1bc6763369752757f57e639dbc7969fd5b6cb0292274d3cf6a3015d496cf1f",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:645da9ed-c37c-937b-d2d3-da7ec6fe8922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_map_eq_self_iff_of_isPrime {S : Type*} [CommSemiring S] {f : R →+* S}
    (p : Ideal R) [p.IsPrime] :
    (p.map f).comap f = p ↔ (∃ (q : Ideal S), q.IsPrime ∧ q.comap f = p) := by
  refine ⟨fun hp ↦ ?_, ?_⟩
  · obtain ⟨q, hq₁, hq₂, hq₃⟩ := Ideal.exists_le_prime_disjoint _ _
      (disjoint_map_primeCompl_iff_comap_le.mpr hp.le)
    exact ⟨q, hq₁, le_antisymm (disjoint_map_primeCompl_iff_comap_le.mp hq₃)
      (map_le_iff_le_comap.mp hq₂)⟩
  · rintro ⟨q, hq, rfl⟩
    simp

end CommRing

end MapAndComap

end Ideal

namespace RingHom

variable {R : Type u} {S : Type v} {T : Type w}

section Semiring

variable {F : Type*} {G : Type*} [Semiring R] [Semiring S] [Semiring T]
variable [FunLike F R S] [rcf : RingHomClass F R S] [FunLike G T S] [rcg : RingHomClass G T S]
variable (f : F) (g : G)

/-- Kernel of a ring homomorphism as an ideal of the domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78b13e000b0f7a434acd12f304133cec8247015a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
