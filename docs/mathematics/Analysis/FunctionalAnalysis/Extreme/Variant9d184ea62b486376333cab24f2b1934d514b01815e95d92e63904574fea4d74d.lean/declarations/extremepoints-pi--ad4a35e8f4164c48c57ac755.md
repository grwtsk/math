# extremePoints_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f237f7e0-d1df-1815-7ddb-5a07b363d43e",
  "kind": "theorem",
  "lexical_name": "extremePoints_pi",
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
  "slug": "extremepoints-pi--ad4a35e8f4164c48c57ac755",
  "source": {
    "blob": "5a95fa4ac71665fb65cc4118b576af965f72887a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 224,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad4a35e8f4164c48c57ac755aee9fef06d66f18b07be477cccc0412392bb339e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f237f7e0-d1df-1815-7ddb-5a07b363d43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremePoints_pi (s : ∀ i, Set (M i)) :
    (univ.pi s).extremePoints 𝕜 = univ.pi fun i ↦ (s i).extremePoints 𝕜 := by
  classical
  ext x
  simp only [mem_extremePoints_iff_left, mem_univ_pi, @forall_and ι]
  refine and_congr_right fun hx ↦ ⟨fun h i ↦ ?_, fun h ↦ ?_⟩
  · rintro x₁ hx₁ x₂ hx₂ hi
    rw [← update_self i x₁ x, h (update x i x₁) _ (update x i x₂)]
    · rintro j
      obtain rfl | hji := eq_or_ne j i <;> simp [*]
    · rw [← Pi.image_update_openSegment]
      exact ⟨_, hi, update_eq_self _ _⟩
    · rintro j
      obtain rfl | hji := eq_or_ne j i <;> simp [*]
  · rintro x₁ hx₁ x₂ hx₂ ⟨a, b, ha, hb, hab, rfl⟩
    ext i
    exact h _ _ (hx₁ _) _ (hx₂ _) ⟨a, b, ha, hb, hab, rfl⟩

end OrderedSemiring

section OrderedRing
variable {L : Type*} [Ring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [AddCommGroup F] [Module 𝕜 F]
  [EquivLike L E F] [LinearEquivClass L 𝕜 E F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a95fa4ac71665fb65cc4118b576af965f72887a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
