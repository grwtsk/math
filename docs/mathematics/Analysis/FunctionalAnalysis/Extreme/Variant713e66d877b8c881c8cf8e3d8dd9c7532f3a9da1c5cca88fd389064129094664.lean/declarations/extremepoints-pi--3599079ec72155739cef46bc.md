# extremePoints_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5935ff02-31aa-b582-56ae-6301bcc89172",
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
  "slug": "extremepoints-pi--3599079ec72155739cef46bc",
  "source": {
    "blob": "4c872512dd7f9d3b00974a374926e1d64fef7501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 210,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3599079ec72155739cef46bce1802be0dd15bf599d9f9520fd28415302889bc4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5935ff02-31aa-b582-56ae-6301bcc89172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremePoints_pi (s : ∀ i, Set (M i)) :
    (univ.pi s).extremePoints 𝕜 = univ.pi fun i ↦ (s i).extremePoints 𝕜 := by
  classical
  ext x
  simp only [mem_extremePoints, mem_pi, mem_univ, true_imp_iff, @forall_and ι]
  refine and_congr_right fun hx ↦ ⟨fun h i ↦ ?_, fun h ↦ ?_⟩
  · rintro x₁ hx₁ x₂ hx₂ hi
    refine (h (update x i x₁) ?_ (update x i x₂) ?_ ?_).imp (fun h₁ ↦ by rw [← h₁, update_self])
        fun h₂ ↦ by rw [← h₂, update_self]
    iterate 2
      rintro j
      obtain rfl | hji := eq_or_ne j i
      · rwa [update_self]
      · rw [update_of_ne hji]
        exact hx _
    rw [← Pi.image_update_openSegment]
    exact ⟨_, hi, update_eq_self _ _⟩
  · rintro x₁ hx₁ x₂ hx₂ ⟨a, b, ha, hb, hab, hx'⟩
    simp_rw [funext_iff, ← forall_and]
    exact fun i ↦ h _ _ (hx₁ _) _ (hx₂ _) ⟨a, b, ha, hb, hab, congr_fun hx' _⟩

end OrderedSemiring

section OrderedRing
variable {L : Type*} [Ring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [AddCommGroup F] [Module 𝕜 F]
  [EquivLike L E F] [LinearEquivClass L 𝕜 E F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c872512dd7f9d3b00974a374926e1d64fef7501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
