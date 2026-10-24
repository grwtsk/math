# ramificationIdxIn_eq_and_inertiaDegIn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97f5cc77-85c2-5ebb-d602-40a5584640ce",
  "kind": "lemma",
  "lexical_name": "ramificationIdxIn_eq_and_inertiaDegIn_eq",
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
  "slug": "ramificationidxin-eq-and-inertiadegin-eq--448f034b0a83296a5c1d8708",
  "source": {
    "blob": "9cdda5ee69f08d3e77c9d1a9a523067f05bd15ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 296,
    "path": "GRWTSK/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:448f034b0a83296a5c1d8708c186b8e55a392b6f126b4cc53c077c14009aab66",
  "verification": {
    "reference": "docs/verification/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f5cc77-85c2-5ebb-d602-40a5584640ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ramificationIdxIn_eq_and_inertiaDegIn_eq (hp : p ≠ ⊥) :
    ramificationIdxIn 𝓟D B = p.ramificationIdxIn B ∧ inertiaDegIn 𝓟D B = p.inertiaDegIn B := by
  obtain ⟨_, _, _, _, _, h𝓟⟩ := instances A K L P D 𝓞D 𝓟D hp
  refine eq_and_eq_of_pos_of_le_of_mul_le_mul ?_ ?_ ?_ ?_ ?_
  · exact Nat.pos_of_ne_zero <| ramificationIdxIn_ne_zero (stabilizer Gal(L/K) P)
  · exact Nat.pos_of_ne_zero <| inertiaDegIn_ne_zero (stabilizer Gal(L/K) P)
  · rw [ramificationIdxIn_eq_ramificationIdx p P Gal(L/K),
      ramificationIdxIn_eq_ramificationIdx _ P (stabilizer Gal(L/K) P)]
    exact 𝓟D.ramificationIdx_above_le P
  · rw [inertiaDegIn_eq_inertiaDeg p P Gal(L/K),
      inertiaDegIn_eq_inertiaDeg _ P (stabilizer Gal(L/K) P)]
    exact inertiaDeg_above_le 𝓟D P
  · have := ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn 𝓟D B (stabilizer Gal(L/K) P)
    rw [primesOver_eq_singleton K L P D 𝓞D, Set.ncard_singleton, one_mul] at this
    rw [this, IsGaloisGroup.card_eq_finrank (stabilizer Gal(L/K) P) D L,
      IsDecompositionField.rank_left A K L P D hp]

include K L D P in
/--
Let `D` be the decomposition field of `P` in `L/K`. Let `𝓟D` be a prime ideal of `D` below `P`,
then the ramification index of `𝓟D` in `L` is equal to the ramification index of `p` in `L`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HilbertTheory/Variantde1e1a63463f6add4a9eeec5037b72fc4d0a9563f870b26240ef56e37348e7f6.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cdda5ee69f08d3e77c9d1a9a523067f05bd15ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
