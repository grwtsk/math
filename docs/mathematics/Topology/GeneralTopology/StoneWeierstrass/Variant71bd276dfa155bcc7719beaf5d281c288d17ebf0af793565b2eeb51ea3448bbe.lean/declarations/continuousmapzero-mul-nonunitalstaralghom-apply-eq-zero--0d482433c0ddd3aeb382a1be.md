# ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 696,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f33e16b-4f22-4f23-e3eb-c8628b5a4068",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78174650-c725-3e44-657c-fbcf783c8aa5",
  "kind": "lemma",
  "lexical_name": "ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero",
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
  "slug": "continuousmapzero-mul-nonunitalstaralghom-apply-eq-zero--0d482433c0ddd3aeb382a1be",
  "source": {
    "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 696,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d482433c0ddd3aeb382a1be26dd065a38fce4522492f3df1ff891ad74f87739",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78174650-c725-3e44-657c-fbcf783c8aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero {𝕜 A : Type*}
    [RCLike 𝕜] [NonUnitalSemiring A] [Star A] [TopologicalSpace A] [SeparatelyContinuousMul A]
    [T2Space A] [DistribMulAction 𝕜 A] [SMulCommClass 𝕜 A A] {s : Set 𝕜} [Fact (0 ∈ s)]
    [CompactSpace s] (φ : C(s, 𝕜)₀ →⋆ₙₐ[𝕜] A) (a : A) (hmul_id : a * φ (.id s) = 0)
    (hmul_star_id : a * φ (star (.id s)) = 0) (hφ : Continuous φ) (f : C(s, 𝕜)₀) :
    a * φ f = 0 := by
  induction f using ContinuousMapZero.induction_on_of_compact with
  | zero => simp [map_zero]
  | id => exact hmul_id
  | star_id => exact hmul_star_id
  | add _ _ h₁ h₂ => simp only [map_add, mul_add, h₁, h₂, zero_add]
  | mul _ _ h _ => simp only [map_mul, ← mul_assoc, h, zero_mul]
  | smul _ _ h => rw [map_smul, mul_smul_comm, h, smul_zero]
  | frequently f h => exact h.mem_of_closed <| isClosed_eq (by fun_prop) continuous_zero

end ContinuousMapZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
