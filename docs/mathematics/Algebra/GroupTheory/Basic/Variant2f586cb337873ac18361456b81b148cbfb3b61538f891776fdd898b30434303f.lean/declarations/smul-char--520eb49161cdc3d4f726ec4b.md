# smul'_char

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3876dcb-83ef-3606-20e8-3f426bf51fe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63003f4d-3bac-5f84-e5c5-a078a869157f",
  "kind": "theorem",
  "lexical_name": "smul'_char",
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
  "slug": "smul-char--520eb49161cdc3d4f726ec4b",
  "source": {
    "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 203,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:520eb49161cdc3d4f726ec4b7ad1e3e2354d2a94d49f59b85df0ecfcdf30870b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63003f4d-3bac-5f84-e5c5-a078a869157f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem smul'_char (r₁ : R) (r₂ : X) (s₁ s₂ : S) (u : S) (v : R) (huv : u * r₁ = v * s₂) :
    OreLocalization.smul' r₁ s₁ r₂ s₂ = v • r₂ /ₒ (u * s₁) := by
  -- Porting note: `assoc_rw` was not ported yet
  simp only [smul']
  have h₀ := ore_eq r₁ s₂; set v₀ := oreNum r₁ s₂; set u₀ := oreDenom r₁ s₂
  rcases oreCondition (u₀ : R) u with ⟨r₃, s₃, h₃⟩
  have :=
    calc
      r₃ * v * s₂ = r₃ * (u * r₁) := by rw [mul_assoc, ← huv]
      _ = s₃ * (u₀ * r₁) := by rw [← mul_assoc, ← mul_assoc, h₃]
      _ = s₃ * v₀ * s₂ := by rw [mul_assoc, h₀]
  rcases ore_right_cancel _ _ _ this with ⟨s₄, hs₄⟩
  symm; rw [oreDiv_eq_iff]
  use s₄ * s₃
  use s₄ * r₃
  simp only [Submonoid.coe_mul, Submonoid.smul_def, smul_eq_mul]
  constructor
  · rw [smul_smul, mul_assoc (c := v₀), ← hs₄]
    simp only [smul_smul, mul_assoc]
  · rw [← mul_assoc (b := (u₀ : R)), mul_assoc (c := (u₀ : R)), h₃]
    simp only [mul_assoc]

/-- The multiplication on the Ore localization of monoids. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf44a79828b938c6400893f676e0b3c79e306139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
