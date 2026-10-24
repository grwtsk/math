# ωScottContinuous.inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5eebcdd-ba35-6b88-5eff-62d2a8df8160",
  "kind": "lemma",
  "lexical_name": "ωScottContinuous.inf",
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
  "slug": "scottcontinuous-inf--6a1498fcb7780bb6fc543736",
  "source": {
    "blob": "51705aa6cd242dc0035dc77dc1da86f500d38843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 503,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1498fcb7780bb6fc543736f3f9af1427a9f09d8843cac085b2070f236f7b51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5eebcdd-ba35-6b88-5eff-62d2a8df8160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ωScottContinuous.inf (hf : ωScottContinuous f) (hg : ωScottContinuous g) :
    ωScottContinuous (f ⊓ g) := by
  refine ωScottContinuous.of_monotone_map_ωSup
    ⟨hf.monotone.inf hg.monotone, fun c ↦ eq_of_forall_ge_iff fun a ↦ ?_⟩
  simp only [Pi.inf_apply, hf.map_ωSup c, hg.map_ωSup c, inf_le_iff, ωSup_le_iff, Chain.map_coe,
    Function.comp, OrderHom.coe_mk, ← forall_or_left, ← forall_or_right]
  exact ⟨fun h _ ↦ h _ _, fun h i j ↦
    (h (max j i)).imp (le_trans <| hf.monotone <| c.mono <| le_max_left _ _)
      (le_trans <| hg.monotone <| c.mono <| le_max_right _ _)⟩

end CompleteLattice

namespace OmegaCompletePartialOrder
variable [OmegaCompletePartialOrder α] [OmegaCompletePartialOrder β]
variable [OmegaCompletePartialOrder γ] [OmegaCompletePartialOrder δ]

namespace OrderHom

/-- The `ωSup` operator for monotone functions. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51705aa6cd242dc0035dc77dc1da86f500d38843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
