# torsion_eq_one_or_neg_one_of_odd_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b1aa5d-71ec-928a-6cf0-3815627fb426",
  "kind": "theorem",
  "lexical_name": "torsion_eq_one_or_neg_one_of_odd_finrank",
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
  "slug": "torsion-eq-one-or-neg-one-of-odd-finrank--d8fdcf3e7bd67bb64b33ad56",
  "source": {
    "blob": "f7d9b20501a74e34ea166f3bcf8b79ff55210daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8fdcf3e7bd67bb64b33ad56ca83018d416edd2e494e9956c795c91b8072c962",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b1aa5d-71ec-928a-6cf0-3815627fb426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_eq_one_or_neg_one_of_odd_finrank [NumberField K]
    (h : Odd (Module.finrank ℚ K)) (x : torsion K) : (x : (𝓞 K)ˣ) = 1 ∨ (x : (𝓞 K)ˣ) = -1 := by
  by_cases hc : 2 < orderOf (x : (𝓞 K)ˣ)
  · rw [← orderOf_units, ← orderOf_submonoid] at hc
    linarith [IsPrimitiveRoot.nrRealPlaces_eq_zero_of_two_lt hc (IsPrimitiveRoot.orderOf (x.1 : K)),
        NumberField.InfinitePlace.nrRealPlaces_pos_of_odd_finrank h]
  · push_neg at hc
    interval_cases hi : orderOf (x : (𝓞 K)ˣ)
    · linarith [orderOf_pos_iff.2 ((CommGroup.mem_torsion _ x.1).1 x.2)]
    · exact Or.intro_left _ (orderOf_eq_one_iff.1 hi)
    · rw [← orderOf_units, CharP.orderOf_eq_two_iff 0 (by decide)] at hi
      simp [← Units.eq_iff, ← Units.eq_iff, Units.val_neg, Units.val_one, hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d9b20501a74e34ea166f3bcf8b79ff55210daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
