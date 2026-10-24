# extremePoints_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1534f8048721e1dfbc097d7077ee4ed9fae6301",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b54c8432-9914-5b27-bad3-ac3c25d4aabf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc0e1a8-c072-3b8c-9439-dc13066d0448",
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
  "slug": "extremepoints-pi--4b5a1c069b97a8648ca43975",
  "source": {
    "blob": "e1534f8048721e1dfbc097d7077ee4ed9fae6301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 202,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b5a1c069b97a8648ca43975604b4ae8fcc432152f21cb2e5352e7270143babe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc0e1a8-c072-3b8c-9439-dc13066d0448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–229.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1534f8048721e1dfbc097d7077ee4ed9fae6301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
