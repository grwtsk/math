# cyclotomicCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f94f30483d7e5b6279dc4901a8c1a017d305dc8b52344e79fd8fe6d1f4d81aae",
  "kind": "def",
  "lexical_name": "cyclotomicCharacter",
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
  "slug": "cyclotomiccharacter--1815c3201a0338442fe69e55",
  "source": {
    "blob": "a2dbed4def5f1337c517242792bb4c73a54f9169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1815c3201a0338442fe69e5535f203dd6b1d00082326ae9a642bb316231d08a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f94f30483d7e5b6279dc4901a8c1a017d305dc8b52344e79fd8fe6d1f4d81aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cyclotomicCharacter (p : ℕ) [Fact p.Prime] :
    (L ≃+* L) →* ℤ_[p]ˣ := .toHomUnits
  { toFun g := cyclotomicCharacter.toFun p g
    map_one' := by
      by_cases H : ∀ (i : ℕ), ∃ ζ : L, IsPrimitiveRoot ζ (p ^ i)
      · haveI (i) : HasEnoughRootsOfUnity L (p ^ i) := ⟨H i, rootsOfUnity.isCyclic _ _⟩
        refine PadicInt.ext_of_toZModPow.mp fun n ↦ ?_
        simp [cyclotomicCharacter.toZModPow_toFun]
      · simp [cyclotomicCharacter.toFun, dif_neg H]
    map_mul' f g := by
      by_cases H : ∀ (i : ℕ), ∃ ζ : L, IsPrimitiveRoot ζ (p ^ i)
      · haveI (i) : HasEnoughRootsOfUnity L (p ^ i) := ⟨H i, rootsOfUnity.isCyclic _ _⟩
        refine PadicInt.ext_of_toZModPow.mp fun n ↦ ?_
        simp [cyclotomicCharacter.toZModPow_toFun]
      · simp [cyclotomicCharacter.toFun, dif_neg H] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dbed4def5f1337c517242792bb4c73a54f9169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
