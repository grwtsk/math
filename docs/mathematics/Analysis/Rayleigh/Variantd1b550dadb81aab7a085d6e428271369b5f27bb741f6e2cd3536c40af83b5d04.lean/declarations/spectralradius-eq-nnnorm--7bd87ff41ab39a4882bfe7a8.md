# spectralRadius_eq_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28878ee9dc0cbb64cc9074fa33beebf04aac60dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6c6218e-4f46-883a-5713-98112960a79f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8a1be7e-d31e-555d-f68c-6f1b6aa274a2",
  "kind": "theorem",
  "lexical_name": "spectralRadius_eq_nnnorm",
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
  "slug": "spectralradius-eq-nnnorm--7bd87ff41ab39a4882bfe7a8",
  "source": {
    "blob": "28878ee9dc0cbb64cc9074fa33beebf04aac60dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 182,
    "path": "GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd87ff41ab39a4882bfe7a823f0b7cfd26f23f87aeb11acd2b6197027099e82",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8a1be7e-d31e-555d-f68c-6f1b6aa274a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralRadius_eq_nnnorm [CompleteSpace E] (hT : IsSelfAdjoint T) :
    spectralRadius 𝕜 T = ‖T‖₊ := by
  nontriviality E
  apply le_antisymm (spectralRadius_le_nnnorm T)
  suffices h : algebraMap ℝ 𝕜 ‖T‖ ∈ spectrum 𝕜 T ∨ algebraMap ℝ 𝕜 (-‖T‖) ∈ spectrum 𝕜 T by
    rcases h with h | h <;>
      exact le_trans (by simp) (le_biSup _ (spectrum_subset_quasispectrum 𝕜 T h))
  simp_rw [spectrum, Set.mem_compl_iff, map_neg]
  by_contra! h
  obtain ⟨c, hc0, hc⟩ := T.abs_rayleighQuotient_le_of_norm_mem_resolventSet h.1 h.2
  grind [ciSup_le hc, norm_eq_iSup_rayleighQuotient T hT.isSymmetric]

end ContinuousLinearMap

namespace IsSelfAdjoint

section Real

variable {F : Type*} [NormedAddCommGroup F] [InnerProductSpace ℝ F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28878ee9dc0cbb64cc9074fa33beebf04aac60dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
