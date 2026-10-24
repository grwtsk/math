# resolvent_comp_shiftedOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccc6d27fb89fe84130699b6d2f29600a7338a95b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d29c77a-2d83-c4f7-654f-3e44abccdcec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1814ee1e-e683-4e99-cc7e-7ee6cfc43330",
  "kind": "theorem",
  "lexical_name": "resolvent_comp_shiftedOperator",
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
  "slug": "resolvent-comp-shiftedoperator--d22d6e06e96a0d7547c25420",
  "source": {
    "blob": "ccc6d27fb89fe84130699b6d2f29600a7338a95b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d22d6e06e96a0d7547c25420d5f0189a43de79b53666719f30d2368271990f4d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteSpectralResolvent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1814ee1e-e683-4e99-cc7e-7ee6cfc43330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_comp_shiftedOperator
    (M : Model ι E) (z : ℝ) (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.resolvent z).comp (M.shiftedOperator z) = LinearMap.id := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply, LinearMap.id_apply]
  rw [M.resolvent_coordinates, M.shiftedOperator_coordinates]
  change
    (M.eigenvalue i - z)⁻¹ *
        ((M.eigenvalue i - z) * M.frame x i) = M.frame x i
  have hne : M.eigenvalue i - z ≠ 0 := sub_ne_zero.mpr (hz i)
  rw [← mul_assoc, inv_mul_cancel₀ hne, one_mul]

/-- The exact finite resolvent commutes with the diagonalized operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/FiniteSpectralResolvent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccc6d27fb89fe84130699b6d2f29600a7338a95b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
