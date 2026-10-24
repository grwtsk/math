# arg_eq_neg_pi_div_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecf21e6b-35af-ad56-f9be-cd0e88b436bd",
  "kind": "theorem",
  "lexical_name": "arg_eq_neg_pi_div_two_iff",
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
  "slug": "arg-eq-neg-pi-div-two-iff--57ef23aff49936111679dd9e",
  "source": {
    "blob": "54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 284,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ef23aff49936111679dd9e1b4e37f4af5bd9213b2a3e22c3924a5c255fa116",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecf21e6b-35af-ad56-f9be-cd0e88b436bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_eq_neg_pi_div_two_iff {z : ℂ} : arg z = -(π / 2) ↔ z.re = 0 ∧ z.im < 0 := by
  by_cases h₀ : z = 0; · simp [h₀, Real.pi_ne_zero]
  constructor
  · intro h
    rw [← norm_mul_cos_add_sin_mul_I z, h]
    simp [h₀]
  · obtain ⟨x, y⟩ := z
    rintro ⟨rfl : x = 0, hy : y < 0⟩
    rw [← arg_neg_I, ← arg_real_mul (-I) (neg_pos.2 hy), mk_eq_add_mul_I]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
