# Ico_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80a8c3b3-deb0-9c35-e5d8-f11ae400f565",
  "kind": "theorem",
  "lexical_name": "Ico_lemma",
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
  "slug": "ico-lemma--e79af26831b3b5c0e2923cd5",
  "source": {
    "blob": "1828de22caa9275bc2633f3b26b44e3f11da9a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e79af26831b3b5c0e2923cd507f4b0e71e782e5f5b4d01016c068dab23e2ed77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a8c3b3-deb0-9c35-e5d8-f11ae400f565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_lemma {α} [LinearOrder α] {x₁ x₂ y₁ y₂ z₁ z₂ w : α} (h₁ : x₁ < y₁) (hy : y₁ < y₂)
    (h₂ : y₂ < x₂) (hz₁ : z₁ ≤ y₂) (hz₂ : y₁ ≤ z₂) (hw : w ∉ Ico y₁ y₂ ∧ w ∈ Ico z₁ z₂) :
    ∃ w, w ∈ Ico x₁ x₂ ∧ w ∉ Ico y₁ y₂ ∧ w ∈ Ico z₁ z₂ := by
  simp only [not_and, not_lt, mem_Ico] at hw
  refine' ⟨max x₁ (min w y₂), _, _, _⟩
  · simp [le_refl, lt_trans h₁ (lt_trans hy h₂), h₂]
  · simp (config := { contextual := true }) [hw, lt_irrefl, not_le_of_lt h₁]
  · simp [hw.2.1, hw.2.2, hz₁, lt_of_lt_of_le h₁ hz₂]
#align theorems_100.«82».Ico_lemma Theorems100.«82».Ico_lemma

/-- A (hyper)-cube (in standard orientation) is a vector `b` consisting of the bottom-left point
of the cube, a width `w` and a proof that `w > 0`. We use functions from `Fin n` to denote vectors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1828de22caa9275bc2633f3b26b44e3f11da9a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
