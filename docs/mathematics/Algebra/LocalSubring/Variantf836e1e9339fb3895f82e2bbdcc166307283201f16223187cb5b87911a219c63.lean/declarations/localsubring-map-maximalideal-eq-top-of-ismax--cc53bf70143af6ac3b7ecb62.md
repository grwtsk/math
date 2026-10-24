# LocalSubring.map_maximalIdeal_eq_top_of_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9181e390-1d58-de7e-0cf6-0cd9ad1e2290",
  "kind": "lemma",
  "lexical_name": "LocalSubring.map_maximalIdeal_eq_top_of_isMax",
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
  "slug": "localsubring-map-maximalideal-eq-top-of-ismax--cc53bf70143af6ac3b7ecb62",
  "source": {
    "blob": "372e66acf36f1ebde5cd151babbecba8788be4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc53bf70143af6ac3b7ecb623ddbc74ceca186e30e1b39f085d5350267e1c769",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9181e390-1d58-de7e-0cf6-0cd9ad1e2290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalSubring.map_maximalIdeal_eq_top_of_isMax {R : LocalSubring K}
    (hR : IsMax R) {S : Subring K} (hS : R.toSubring < S) :
    (maximalIdeal R.toSubring).map (Subring.inclusion hS.le) = ⊤ := by
  let mR := (maximalIdeal R.toSubring).map (Subring.inclusion hS.le)
  by_contra h_is_not_top
  obtain ⟨M, h_is_max, h_incl⟩ := Ideal.exists_le_maximal _ h_is_not_top
  let fSₘ : LocalSubring K := LocalSubring.ofPrime S M
  have h_RleSₘ : R ≤ fSₘ := by
    refine ⟨hS.le.trans (LocalSubring.le_ofPrime _ _), ⟨?_⟩⟩
    rintro ⟨a, h_a_inR⟩ h_fa_isUnit
    apply (IsLocalization.AtPrime.isUnit_to_map_iff _ M ⟨a, hS.le h_a_inR⟩).mp at h_fa_isUnit
    by_contra h
    rw [← mem_nonunits_iff, ← mem_maximalIdeal] at h
    apply Ideal.mem_map_of_mem (Subring.inclusion hS.le) at h
    exact h_fa_isUnit (h_incl h)
  have h_RneSₘ : R ≠ fSₘ :=
    fun e ↦ (hS.trans_le (LocalSubring.le_ofPrime S M)).ne congr(($e).toSubring)
  exact h_RneSₘ (hR.eq_of_le h_RleSₘ)

@[stacks 00IC]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variantf836e1e9339fb3895f82e2bbdcc166307283201f16223187cb5b87911a219c63.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372e66acf36f1ebde5cd151babbecba8788be4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
