# dvd_solve_combine'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36a9d311-b76d-7408-5ece-3fc5ea85334c",
  "kind": "theorem",
  "lexical_name": "dvd_solve_combine'",
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
  "slug": "dvd-solve-combine--6b5e2b729ef04309197d8e7c",
  "source": {
    "blob": "1e5d731a50a7d946997aeff81d9c755aabd23e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5e2b729ef04309197d8e7cfcb93d5e1c3757bb99c6871f8a338320f81ad311",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a9d311-b76d-7408-5ece-3fc5ea85334c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem dvd_solve_combine' {x : Int} {d₁ a₁ p₁ : Int} {d₂ a₂ p₂ : Int} {α β d : Int}
   (h : α*a₁*d₂ + β*a₂*d₁ = d)
   (h₁ : d₁ ∣ a₁*x + p₁)
   (h₂ : d₂ ∣ a₂*x + p₂)
   : d₁*d₂ ∣ d*x + α*d₂*p₁ + β*d₁*p₂ := by
 rcases h₁ with ⟨k₁, h₁⟩
 replace h₁ : α*a₁*d₂*x + α*d₂*p₁ = d₁*d₂*(α*k₁) := by
   have ac₁ : d₁*d₂*(α*k₁) = α*d₂*(d₁*k₁) := by ac_rfl
   have ac₂ : α * a₁ * d₂ * x = α * d₂ * (a₁ * x) := by ac_rfl
   rw [ac₁, ← h₁, Int.mul_add, ac₂]
 rcases h₂ with ⟨k₂, h₂⟩
 replace h₂ : β*a₂*d₁*x + β*d₁*p₂ = d₁*d₂*(β*k₂) := by
   have ac₁ : d₁*d₂*(β*k₂) = β*d₁*(d₂*k₂) := by ac_rfl
   have ac₂ : β * a₂ * d₁ * x = β * d₁ * (a₂ * x) := by ac_rfl
   rw [ac₁, ←h₂, Int.mul_add, ac₂]
 replace h₁ : d₁*d₂ ∣ α*a₁*d₂*x + α*d₂*p₁ := ⟨α*k₁, h₁⟩
 replace h₂ : d₁*d₂ ∣ β*a₂*d₁*x + β*d₁*p₂ := ⟨β*k₂, h₂⟩
 have h' := Int.dvd_add h₁ h₂; clear h₁ h₂ k₁ k₂
 replace h : d*x = α*a₁*d₂*x + β*a₂*d₁*x := by
   rw [←h, Int.add_mul]
 have ac :
   α * a₁ * d₂ * x + α * d₂ * p₁ + (β * a₂ * d₁ * x + β * d₁ * p₂)
   =
   α * a₁ * d₂ * x + β * a₂ * d₁ * x + α * d₂ * p₁ + β * d₁ * p₂ := by ac_rfl
 rw [h, ←ac]
 assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5d731a50a7d946997aeff81d9c755aabd23e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
