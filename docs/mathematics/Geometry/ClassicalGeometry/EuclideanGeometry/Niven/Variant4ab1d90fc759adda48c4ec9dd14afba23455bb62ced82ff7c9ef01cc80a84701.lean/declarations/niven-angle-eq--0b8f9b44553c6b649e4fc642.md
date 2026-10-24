# niven_angle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:816ab5c0-d86b-c4b6-ed3b-dc2871e85066",
  "kind": "theorem",
  "lexical_name": "niven_angle_eq",
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
  "slug": "niven-angle-eq--0b8f9b44553c6b649e4fc642",
  "source": {
    "blob": "2db52456dd248203fb6210e685f1c59cdce46234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 156,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b8f9b44553c6b649e4fc6426e03de0f9eeb13a98085170615a6e268afc10192",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:816ab5c0-d86b-c4b6-ed3b-dc2871e85066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem niven_angle_eq (hθ : ∃ r : ℚ, θ = r * π) (hcos : ∃ q : ℚ, cos θ = q)
    (h_bnd : θ ∈ Set.Icc 0 π) : θ ∈ ({0, π / 3, π / 2, π * (2 / 3), π} : Set ℝ) := by
  rcases niven hθ hcos with h | h | h | h | h <;>
  -- define `h₂` appropriately for each proof branch
  [have h₂ := cos_pi;
    have h₂ : cos (π * (2 / 3)) = -1 / 2 := by
      have := cos_pi_sub (π / 3)
      have := cos_pi_div_three
      grind;;
    have h₂ := cos_pi_div_two;
    have h₂ := cos_pi_div_three;
    have h₂ := cos_zero] <;>
  simp [injOn_cos h_bnd ⟨by positivity, by linarith [pi_nonneg]⟩ (h₂ ▸ h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Niven/Variant4ab1d90fc759adda48c4ec9dd14afba23455bb62ced82ff7c9ef01cc80a84701.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2db52456dd248203fb6210e685f1c59cdce46234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
