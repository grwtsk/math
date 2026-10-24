# discrim_eq_zero_of_existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca32b16b-7518-ef3b-88f6-bdb1d7351ee6",
  "kind": "theorem",
  "lexical_name": "discrim_eq_zero_of_existsUnique",
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
  "slug": "discrim-eq-zero-of-existsunique--889843e7227b9225b6260ec5",
  "source": {
    "blob": "7cd02876f0e90969d445cf2261c6db59dfcaa61d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889843e7227b9225b6260ec521366701eb9d128425c3a74da8116a88392ae345",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca32b16b-7518-ef3b-88f6-bdb1d7351ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrim_eq_zero_of_existsUnique (ha : a ≠ 0) (h : ∃! x, a * (x * x) + b * x + c = 0) :
    discrim a b c = 0 := by
  simp_rw [quadratic_eq_zero_iff_discrim_eq_sq ha] at h
  generalize discrim a b c = d at h
  obtain ⟨x, rfl, hx⟩ := h
  specialize hx (-(x + b / a))
  field_simp [ha] at hx
  specialize hx (by ring)
  linear_combination -(2 * a * x + b) * hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd02876f0e90969d445cf2261c6db59dfcaa61d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
