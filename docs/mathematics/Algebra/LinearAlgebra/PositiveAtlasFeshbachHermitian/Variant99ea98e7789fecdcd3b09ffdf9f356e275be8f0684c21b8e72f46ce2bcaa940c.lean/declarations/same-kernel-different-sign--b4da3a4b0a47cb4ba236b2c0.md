# same_kernel_different_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fa75e8-d4f0-ac87-cb46-aeda90ea0c25",
  "kind": "theorem",
  "lexical_name": "same_kernel_different_sign",
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
  "slug": "same-kernel-different-sign--b4da3a4b0a47cb4ba236b2c0",
  "source": {
    "blob": "89e24e6f270dee7b3433e5de7f3c5243b3d91ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant99ea98e7789fecdcd3b09ffdf9f356e275be8f0684c21b8e72f46ce2bcaa940c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4da3a4b0a47cb4ba236b2c0062a34ebea1e93f6893d9a7f9dffa12a4b16f572",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant99ea98e7789fecdcd3b09ffdf9f356e275be8f0684c21b8e72f46ce2bcaa940c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fa75e8-d4f0-ac87-cb46-aeda90ea0c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_kernel_different_sign :
    (∀ x : Fin 2 → ℝ,
      positiveDiagonal.mulVec x = 0 ↔ indefiniteDiagonal.mulVec x = 0) ∧
      positiveDiagonal.PosDef ∧ ¬ indefiniteDiagonal.PosSemidef := by
  constructor
  · intro x
    simp only [positiveDiagonal, Matrix.one_mulVec, indefiniteDiagonal,
      funext_iff, Pi.zero_apply, Matrix.mulVec_diagonal]
    constructor
    · intro hx i
      rw [hx i]
      simp
    · intro hx i
      fin_cases i
      · simpa using hx 0
      · simpa using hx 1
  · constructor
    · exact Matrix.PosDef.one
    · rw [indefiniteDiagonal, Matrix.posSemidef_diagonal_iff]
      intro h
      have hzero := h (0 : Fin 2)
      norm_num at hzero

end

end FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant99ea98e7789fecdcd3b09ffdf9f356e275be8f0684c21b8e72f46ce2bcaa940c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant99ea98e7789fecdcd3b09ffdf9f356e275be8f0684c21b8e72f46ce2bcaa940c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89e24e6f270dee7b3433e5de7f3c5243b3d91ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
