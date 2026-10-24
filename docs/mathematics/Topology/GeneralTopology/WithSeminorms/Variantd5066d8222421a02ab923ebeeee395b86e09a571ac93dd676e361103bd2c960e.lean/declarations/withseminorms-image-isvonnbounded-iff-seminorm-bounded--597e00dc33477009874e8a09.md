# WithSeminorms.image_isVonNBounded_iff_seminorm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af3c6435eb55934a843ce57e4e04074dff7beb2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3855fdf8-b054-4378-9b69-82c3b7660af9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:724b813a-d5c3-d183-95f2-37eee94289ff",
  "kind": "theorem",
  "lexical_name": "WithSeminorms.image_isVonNBounded_iff_seminorm_bounded",
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
  "slug": "withseminorms-image-isvonnbounded-iff-seminorm-bounded--597e00dc33477009874e8a09",
  "source": {
    "blob": "af3c6435eb55934a843ce57e4e04074dff7beb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:597e00dc33477009874e8a0981120388c693a9ed5e3ab733783f95fa79d34a9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:724b813a-d5c3-d183-95f2-37eee94289ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithSeminorms.image_isVonNBounded_iff_seminorm_bounded (f : G → E) {s : Set G}
    (hp : WithSeminorms p) :
    Bornology.IsVonNBounded 𝕜 (f '' s) ↔ ∀ i : ι, ∃ r > 0, ∀ x ∈ s, p i (f x) < r := by
  simp_rw [hp.isVonNBounded_iff_seminorm_bounded, Set.forall_mem_image]

end NontriviallyNormedField

-- TODO: the names in this section are not very predictable
section continuous_of_bounded

namespace Seminorm

variable [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]
variable [NormedField 𝕝] [Module 𝕝 E]
variable [NontriviallyNormedField 𝕜₂] [AddCommGroup F] [Module 𝕜₂ F]
variable [NormedField 𝕝₂] [Module 𝕝₂ F]
variable {σ₁₂ : 𝕜 →+* 𝕜₂} [RingHomIsometric σ₁₂]
variable {τ₁₂ : 𝕝 →+* 𝕝₂} [RingHomIsometric τ₁₂]
variable [Nonempty ι] [Nonempty ι']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3c6435eb55934a843ce57e4e04074dff7beb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
