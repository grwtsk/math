# abs_weightedMoebius_sum_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64eb4b93-8371-579e-7cab-56497aab208e",
  "kind": "theorem",
  "lexical_name": "abs_weightedMoebius_sum_zero_eq",
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
  "slug": "abs-weightedmoebius-sum-zero-eq--d4dddfd74b9aa21bde478af6",
  "source": {
    "blob": "6deb99900b4d3250a24a4017bacdb01d9cf6821b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4dddfd74b9aa21bde478af6c58999a5211c7731fddfd97e693e9f96aa1bc28f",
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

Occurrence: `result:64eb4b93-8371-579e-7cab-56497aab208e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weightedMoebius_sum_zero_eq (N : ℕ) :
    (∑ d ∈ Finset.Icc 0 N, |weightedMoebius d|) =
      ∑ d ∈ Finset.Icc 1 N, |weightedMoebius d| := by
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hdnot
    have hd0 : d = 0 := by
      simp only [Finset.mem_Icc] at hd hdnot
      omega
    subst d
    simp only [weightedMoebius_zero, abs_zero]

/-- The unsigned jump mass exceeds every constant at some real scale beyond
any requested threshold. This is not a statement about the signed primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6deb99900b4d3250a24a4017bacdb01d9cf6821b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
