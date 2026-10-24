# IsFractionRing.finrank_left_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d2b79d3-e411-8939-449f-84bf3cb761a8",
  "kind": "theorem",
  "lexical_name": "IsFractionRing.finrank_left_eq",
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
  "slug": "isfractionring-finrank-left-eq--62e7a1973d161bed72d32629",
  "source": {
    "blob": "b6e48f687edfe37badd7e42a91fbb3efc69885a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 133,
    "path": "GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e7a1973d161bed72d3262913f89e1daf90cef70efe8a6f2907ac1ebfb34827",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d2b79d3-e411-8939-449f-84bf3cb761a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFractionRing.finrank_left_eq (A : Type*) [CommRing A] [Algebra S A] [Algebra R A]
    [IsScalarTower R S A] [IsFractionRing S A] : Module.finrank R S = Module.finrank R A := by
  nontriviality R
  classical
  apply Cardinal.toNat_eq_of_forall_le_iff
  intro n
  simp_rw [Module.le_rank_iff_exists_finset, LinearIndepOn]
  constructor
  · rintro ⟨s, rfl, hs⟩
    let f : S ↪ A := ⟨algebraMap S A, FaithfulSMul.algebraMap_injective S A⟩
    exact ⟨s.map f, s.card_map f,
      (linearIndependent_equiv (s.equivMap f)).mp (LinearIndependent.algebraMap_comp_iff.mpr hs)⟩
  · rintro ⟨s, rfl, hs⟩
    exact ⟨finsetIntegerMultiple S⁰ s, card_finsetIntegerMultiple S⁰ s,
      linearIndepOn_finsetIntegerMultiple S⁰ hs⟩

/-- If `K` is the fraction ring of `A` and `L` is the fraction ring of `B`, then the finrank
`finrank K L` of the fraction rings equals the finrank `finrank A B` of the base rings.

See `IsFractionRing.finrank_left_eq` and `IsFractionRing.finrank_right_eq` for one-sided versions.
See `Algebra.IsAlgebraic.rank_of_isFractionRing` for a rank version with additional assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e48f687edfe37badd7e42a91fbb3efc69885a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
