# cos_ne_zero_of_arctan_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9a76a58-8248-4b00-1b0d-e4861e493a12",
  "kind": "lemma",
  "lexical_name": "cos_ne_zero_of_arctan_bounds",
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
  "slug": "cos-ne-zero-of-arctan-bounds--2ebbf870631c5734c8fff696",
  "source": {
    "blob": "9157f1c3abd10b112782ff098e68b0dc3a0587ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ebbf870631c5734c8fff696073c214b740caf4014abd449e9ee8496cdc443c1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9a76a58-8248-4b00-1b0d-e4861e493a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cos_ne_zero_of_arctan_bounds {z : ℂ} (h₀ : z ≠ π / 2) (h₁ : -(π / 2) < z.re)
    (h₂ : z.re ≤ π / 2) : cos z ≠ 0 := by
  refine cos_ne_zero_iff.mpr (fun k ↦ ?_)
  rw [ne_eq, Complex.ext_iff, not_and_or] at h₀ ⊢
  norm_cast at h₀ ⊢
  rcases h₀ with nr | ni
  · left; contrapose nr
    rw [nr, mul_div_assoc, neg_eq_neg_one_mul, mul_lt_mul_iff_of_pos_right (by positivity)] at h₁
    rw [nr, ← one_mul (π / 2), mul_div_assoc, mul_le_mul_iff_of_pos_right (by positivity)] at h₂
    norm_cast at h₁ h₂
    change -1 < _ at h₁
    rwa [show 2 * k + 1 = 1 by lia, Int.cast_one, one_mul] at nr
  · exact Or.inr ni

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9157f1c3abd10b112782ff098e68b0dc3a0587ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
