# sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14ff43fd-9c19-faed-1754-a17df51af5b5",
  "kind": "theorem",
  "lexical_name": "sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits",
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
  "slug": "sum-nonzerofrequencies-eq-exceptional-add-regularorbits--4569996b4fa290bc9148370c",
  "source": {
    "blob": "2462a35ddac26d0c9c2d20b4caaac4db5daf757b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4569996b4fa290bc9148370ceb0bd063a2484dd2ceddc5696590468349cd1e6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14ff43fd-9c19-faed-1754-a17df51af5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits
    {M : Type*} [AddCommMonoid M]
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (f : ZMod (d * d) → M) :
    (∑ k ∈ nonzeroSquareModulusFrequencySet d, f k) =
      f (twoKernelFrequency d) +
        ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
          (f k + f (twoKernelPartner d k)) := by
  classical
  rw [nonzeroFrequencySet_eq_exceptional_union_regularOrbits d hNonunit]
  rw [Finset.sum_insert]
  · rw [Finset.sum_union
      (representativeSet_disjoint_partnerImage d hNonunit)]
    rw [Finset.sum_image]
    · rw [← Finset.sum_add_distrib]
    · intro x _hx y _hy hxy
      exact twoKernelPartner_injective d hNonunit hxy
  · intro hmem
    rcases Finset.mem_union.mp hmem with hrep | himage
    · exact exceptional_not_mem_representativeSet d hNonunit hrep
    · exact exceptional_not_mem_partnerImage d hNonunit himage

/-- The doubled exceptional frequency is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2462a35ddac26d0c9c2d20b4caaac4db5daf757b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
