# eq_iff_sign_eq_and_abs_toReal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b67f1089-c546-e587-f22c-56f69037a0a7",
  "kind": "theorem",
  "lexical_name": "eq_iff_sign_eq_and_abs_toReal_eq",
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
  "slug": "eq-iff-sign-eq-and-abs-toreal-eq--987f49bb4a28aa000a7f57fc",
  "source": {
    "blob": "8464084c8889b5b5a659c5bb51b4a6ed3e6ad874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 968,
    "line": 948,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:987f49bb4a28aa000a7f57fc94fc6abf865f100eb23ba32c83caa60c1c0d99f8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67f1089-c546-e587-f22c-56f69037a0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–968.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iff_sign_eq_and_abs_toReal_eq {θ ψ : Angle} :
    θ = ψ ↔ θ.sign = ψ.sign ∧ |θ.toReal| = |ψ.toReal| := by
  refine' ⟨_, fun h => _⟩;
  · rintro rfl
    exact ⟨rfl, rfl⟩
  rcases h with ⟨hs, hr⟩
  rw [abs_eq_abs] at hr
  rcases hr with (hr | hr)
  · exact toReal_injective hr
  · by_cases h : θ = π
    · rw [h, toReal_pi, ← neg_eq_iff_eq_neg] at hr
      exact False.elim ((neg_pi_lt_toReal ψ).ne hr)
    · by_cases h' : ψ = π
      · rw [h', toReal_pi] at hr
        exact False.elim ((neg_pi_lt_toReal θ).ne hr.symm)
      · rw [← sign_toReal h, ← sign_toReal h', hr, Left.sign_neg, SignType.neg_eq_self_iff,
          _root_.sign_eq_zero_iff, toReal_eq_zero_iff] at hs
        rw [hs, toReal_zero, neg_zero, toReal_eq_zero_iff] at hr
        rw [hr, hs]
#align real.angle.eq_iff_sign_eq_and_abs_to_real_eq Real.Angle.eq_iff_sign_eq_and_abs_toReal_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8464084c8889b5b5a659c5bb51b4a6ed3e6ad874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
