# lambda_pow_four_dvd_cube_sub_one_of_dvd_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b743ecf7-12be-e8d3-948e-bf05a429eefe",
  "kind": "lemma",
  "lexical_name": "lambda_pow_four_dvd_cube_sub_one_of_dvd_sub_one",
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
  "slug": "lambda-pow-four-dvd-cube-sub-one-of-dvd-sub-one--c7f8b2157810366065dae706",
  "source": {
    "blob": "60210ab3a64884e590b421544045b0fad89637b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f8b2157810366065dae706139d50b6d5e07ba91d90c7699587809f7ea60c4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b743ecf7-12be-e8d3-948e-bf05a429eefe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lambda_pow_four_dvd_cube_sub_one_of_dvd_sub_one {x : 𝓞 K} (h : λ ∣ x - 1) :
    λ ^ 4 ∣ x ^ 3 - 1 := by
  obtain ⟨y, hy⟩ := h
  have : x ^ 3 - 1 = λ ^ 3 * (y * (y - 1) * (y - (η + 1))) := by
    calc _ =  (x - 1) * (x - 1 - λ) * (x - 1 - λ * (η + 1)) := by
          simp only [coe_eta, cube_sub_one_eq_mul hζ x]; ring
    _ = _ := by rw [hy]; ring
  rw [this, pow_succ]
  exact mul_dvd_mul_left _ (lambda_dvd_mul_sub_one_mul_sub_eta_add_one hζ y)

/-- If `λ` divides `x + 1`, then `λ ^ 4` divides `x ^ 3 + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60210ab3a64884e590b421544045b0fad89637b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
