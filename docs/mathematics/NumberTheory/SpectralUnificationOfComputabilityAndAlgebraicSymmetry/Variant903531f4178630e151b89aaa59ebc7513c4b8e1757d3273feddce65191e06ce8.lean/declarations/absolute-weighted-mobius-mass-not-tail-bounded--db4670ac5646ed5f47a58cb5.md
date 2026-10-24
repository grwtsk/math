# absolute_weighted_mobius_mass_not_tail_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e899e8b-4242-b952-a268-b35682994d47",
  "kind": "theorem",
  "lexical_name": "absolute_weighted_mobius_mass_not_tail_bounded",
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
  "slug": "absolute-weighted-mobius-mass-not-tail-bounded--db4670ac5646ed5f47a58cb5",
  "source": {
    "blob": "6deb99900b4d3250a24a4017bacdb01d9cf6821b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db4670ac5646ed5f47a58cb54c7b9495cfeb4bc087eca4a0ee8e3a4a41575c54",
  "verification": {
    "reference": "docs/verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e899e8b-4242-b952-a268-b35682994d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absolute_weighted_mobius_mass_not_tail_bounded :
    ¬ (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), |weightedMoebius d|) ≤ D) := by
  rintro ⟨D, _, R, _, h⟩
  obtain ⟨A, _, hRA, hgt⟩ := absolute_weighted_mobius_mass_unbounded D R
  exact (not_lt_of_ge (h A hRA)) hgt

end
end EstimateAbsoluteMobiusObstruction
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6deb99900b4d3250a24a4017bacdb01d9cf6821b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
