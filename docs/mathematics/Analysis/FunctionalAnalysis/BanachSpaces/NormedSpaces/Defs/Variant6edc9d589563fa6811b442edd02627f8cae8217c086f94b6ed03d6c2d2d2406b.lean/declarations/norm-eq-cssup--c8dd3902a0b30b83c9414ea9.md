# norm_eq_csSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eec49103cdec8913800bacb5811fca133111b0d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:187da985-9ab8-9782-a517-24d88ad7617f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:175150fd-c46e-bfe9-22b6-878661331552",
  "kind": "lemma",
  "lexical_name": "norm_eq_csSup",
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
  "slug": "norm-eq-cssup--c8dd3902a0b30b83c9414ea9",
  "source": {
    "blob": "eec49103cdec8913800bacb5811fca133111b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 268,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8dd3902a0b30b83c9414ea93d7fcd87bbd0cb4881ca312c962353be46734de8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:175150fd-c46e-bfe9-22b6-878661331552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_eq_csSup (v : E) :
    ‖v‖ = sSup { ‖⟪w, v⟫_A‖ | (w : E) (_ : ‖w‖ ≤ 1) } := by
  let instNACG : NormedAddCommGroup E := NormedAddCommGroup.ofCore (normedSpaceCore A)
  let instNS : NormedSpace ℂ E := .ofCore (normedSpaceCore A)
  refine Eq.symm <| IsGreatest.csSup_eq ⟨⟨‖v‖⁻¹ • v, ?_, ?_⟩, ?_⟩
  · simpa only [norm_smul, norm_inv, norm_norm] using inv_mul_le_one_of_le₀ le_rfl (by positivity)
  · simp [norm_smul, ← norm_sq_eq, pow_two, ← mul_assoc]
  · rintro - ⟨w, hw, rfl⟩
    calc _ ≤ ‖w‖ * ‖v‖ := norm_inner_le E
      _ ≤ 1 * ‖v‖ := by gcongr
      _ = ‖v‖ := by simp

end norm

section NormedAddCommGroup

open scoped InnerProductSpace

/- Note: one generally creates a `CStarModule` instance for a type `E` first before getting the
`NormedAddCommGroup` and `NormedSpace` instances via `CStarModule.normedSpaceCore`, especially by
using `NormedAddCommGroup.ofCoreReplaceAll` and `NormedSpace.ofCore`. See
`Analysis.CStarAlgebra.Module.Constructions` for examples. -/
variable {A E : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A] [SMul A E]
  [NormedAddCommGroup E] [NormedSpace ℂ E] [CStarModule A E]

/-- The function `⟨x, y⟩ ↦ ⟪x, y⟫` bundled as a continuous sesquilinear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec49103cdec8913800bacb5811fca133111b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
