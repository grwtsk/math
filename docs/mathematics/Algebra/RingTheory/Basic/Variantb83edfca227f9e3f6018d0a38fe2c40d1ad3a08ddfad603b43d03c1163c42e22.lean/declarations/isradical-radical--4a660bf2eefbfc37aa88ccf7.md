# isRadical_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:732f8cf8-2247-d098-a36d-5d1b489122e6",
  "kind": "lemma",
  "lexical_name": "isRadical_radical",
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
  "slug": "isradical-radical--4a660bf2eefbfc37aa88ccf7",
  "source": {
    "blob": "c1d676991ce863bb4e497a44596cda8d3b4e3dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 226,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a660bf2eefbfc37aa88ccf74694e1e82187201dc411df4e05ffb816c42e4c4c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:732f8cf8-2247-d098-a36d-5d1b489122e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRadical_radical : IsRadical (radical a) := by
  intro n p ha
  rw [radical]
  apply Finset.prod_dvd_of_isRelPrime
  · exact pairwise_primeFactors_isRelPrime
  intro i hi
  simp only [mem_primeFactors] at hi
  have : i ∣ radical a := by
    rw [dvd_radical_iff_of_irreducible]
    · exact dvd_of_mem_normalizedFactors hi
    · exact irreducible_of_normalized_factor i hi
    · rintro rfl
      simp only [normalizedFactors_zero, Multiset.notMem_zero] at hi
  exact (prime_of_normalized_factor i hi).isRadical n p (this.trans ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d676991ce863bb4e497a44596cda8d3b4e3dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
