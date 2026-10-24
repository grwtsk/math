# Ideal.krullDimLE_zero_quotient_iff_forall_minimalPrimes_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b8d186b-9648-5904-1d9c-6f8c219c7317",
  "kind": "theorem",
  "lexical_name": "Ideal.krullDimLE_zero_quotient_iff_forall_minimalPrimes_isMaximal",
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
  "slug": "ideal-krulldimle-zero-quotient-iff-forall-minimalprimes-ismaximal--934d173a3be1dd293ca64311",
  "source": {
    "blob": "af92c2d9aa664006aa0708c530acea56f7b363f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:934d173a3be1dd293ca64311336e2a98ed060983aabe81863c7ac46f123fc577",
  "verification": {
    "reference": "docs/verification/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8d186b-9648-5904-1d9c-6f8c219c7317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.krullDimLE_zero_quotient_iff_forall_minimalPrimes_isMaximal
    {R : Type*} [CommRing R] {I : Ideal R} :
    Ring.KrullDimLE 0 (R ⧸ I) ↔ ∀ J ∈ I.minimalPrimes, J.IsMaximal := by
  rw [Ring.krullDimLE_zero_iff_forall_minimalPrimes_isMaximal, minimalPrimes_eq_comap,
    Set.forall_mem_image]
  refine forall₂_congr fun J hJ ↦ ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · exact comap_isMaximal_of_surjective (Quotient.mk I) Quotient.mk_surjective
  · have := map_eq_top_or_isMaximal_of_surjective (Quotient.mk I) Quotient.mk_surjective h
    rw [map_comap_of_surjective (Quotient.mk I) Quotient.mk_surjective] at this
    exact this.resolve_left hJ.1.1.ne_top

section IsLocalRing

omit [Ring.KrullDimLE 0 R] in
variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zero/Variantb2eb0b6b787971606bce5bd4f22b8036ee523bf08e9c27e91a0ccacef7bb8f1d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af92c2d9aa664006aa0708c530acea56f7b363f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
