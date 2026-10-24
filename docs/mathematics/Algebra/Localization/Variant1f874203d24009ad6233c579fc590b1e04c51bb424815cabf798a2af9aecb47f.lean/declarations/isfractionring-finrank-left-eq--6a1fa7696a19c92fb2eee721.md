# IsFractionRing.finrank_left_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b6e60ea-b5cf-ad80-74e3-592c8a7fb08e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64d8eb5c-a54d-e924-f0c5-16a7e61b2238",
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
  "slug": "isfractionring-finrank-left-eq--6a1fa7696a19c92fb2eee721",
  "source": {
    "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1fa7696a19c92fb2eee721925e5ffa8fdddbaad829e2b9f8eaea4912d4368e",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d8eb5c-a54d-e924-f0c5-16a7e61b2238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

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

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebaa2ed413b2eb42e85f1323dda3a0fb2711304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
