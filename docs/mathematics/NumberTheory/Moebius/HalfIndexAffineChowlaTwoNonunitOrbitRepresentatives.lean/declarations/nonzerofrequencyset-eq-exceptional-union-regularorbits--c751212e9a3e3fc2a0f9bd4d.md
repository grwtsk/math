# nonzeroFrequencySet_eq_exceptional_union_regularOrbits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b0d3048-5e73-71d8-15fb-a52f780fc4ef",
  "kind": "theorem",
  "lexical_name": "nonzeroFrequencySet_eq_exceptional_union_regularOrbits",
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
  "slug": "nonzerofrequencyset-eq-exceptional-union-regularorbits--c751212e9a3e3fc2a0f9bd4d",
  "source": {
    "blob": "2462a35ddac26d0c9c2d20b4caaac4db5daf757b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c751212e9a3e3fc2a0f9bd4d32502f77065956a7a857ccd86757518c882f218e",
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

Occurrence: `result:1b0d3048-5e73-71d8-15fb-a52f780fc4ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzeroFrequencySet_eq_exceptional_union_regularOrbits
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    nonzeroSquareModulusFrequencySet d =
      insert (twoKernelFrequency d)
        (twoKernelRegularOrbitRepresentativeSet d ∪
          (twoKernelRegularOrbitRepresentativeSet d).image
            (twoKernelPartner d)) := by
  classical
  ext k
  constructor
  · intro hk
    have hk0 : k ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hk
    by_cases hkH : k = twoKernelFrequency d
    · simp [hkH]
    · rcases regularFrequency_representative_or_partner
        d hNonunit k hk0 hkH with hrep | hpartner
      · simp [hrep]
      · have hpreimage :
            ∃ q ∈ twoKernelRegularOrbitRepresentativeSet d,
              twoKernelPartner d q = k := by
          refine ⟨twoKernelPartner d k, hpartner, ?_⟩
          exact twoKernelPartner_involutive d hNonunit k
        simp [hpreimage]
  · intro hk
    rcases Finset.mem_insert.mp hk with hkH | hkrest
    · subst k
      exact twoKernelFrequency_mem_nonzeroSet d hNonunit
    · rcases Finset.mem_union.mp hkrest with hrep | himage
      · have hk0 := representative_ne_zero hrep
        simp [nonzeroSquareModulusFrequencySet, hk0]
      · rcases Finset.mem_image.mp himage with ⟨q, hq, rfl⟩
        have hq0 := representative_partner_ne_zero hq
        simp [nonzeroSquareModulusFrequencySet, hq0]

/-- The exceptional frequency does not occur in the regular representative
set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2462a35ddac26d0c9c2d20b4caaac4db5daf757b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
