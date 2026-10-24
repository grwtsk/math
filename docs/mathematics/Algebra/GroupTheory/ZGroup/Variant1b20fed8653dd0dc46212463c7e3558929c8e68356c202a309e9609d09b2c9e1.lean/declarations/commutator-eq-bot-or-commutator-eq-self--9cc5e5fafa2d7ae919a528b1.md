# commutator_eq_bot_or_commutator_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a578f29-9fd0-505c-9ee1-41058ff59e8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec85d2a2-a275-9add-9f2d-4638c0b4310e",
  "kind": "theorem",
  "lexical_name": "commutator_eq_bot_or_commutator_eq_self",
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
  "slug": "commutator-eq-bot-or-commutator-eq-self--9cc5e5fafa2d7ae919a528b1",
  "source": {
    "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 208,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc5e5fafa2d7ae919a528b198628c7c60234af1272ef4355f37c56bb491565f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec85d2a2-a275-9add-9f2d-4638c0b4310e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_eq_bot_or_commutator_eq_self {P K : Subgroup G} [IsCyclic P]
    (hP : IsPGroup p P) (hKP : K ≤ P.normalizer) (hPK : (Nat.card P).Coprime (Nat.card K)) :
    ⁅K, P⁆ = ⊥ ∨ ⁅K, P⁆ = P := by
  let _ := MulDistribMulAction.compHom P (P.normalizerMonoidHom.comp (Subgroup.inclusion hKP))
  refine (smul_mul_inv_trivial_or_surjective hP hPK).imp (fun h ↦ ?_) fun h ↦ ?_
  · rw [eq_bot_iff, Subgroup.commutator_le]
    exact fun k hk g hg ↦ Subtype.ext_iff.mp (h ⟨g, hg⟩ ⟨k, hk⟩)
  · rw [le_antisymm_iff, Subgroup.commutator_le]
    refine ⟨fun k hk g hg ↦ P.mul_mem ((hKP hk g).mp hg) (P.inv_mem hg), fun g hg ↦ ?_⟩
    obtain ⟨k, q, hkq⟩ := h ⟨g, hg⟩
    rw [← Subtype.coe_mk g hg, ← hkq]
    exact Subgroup.commutator_mem_commutator k.2 q.2

end IsPGroup

namespace Sylow

variable [Finite G] (P : Sylow p G) [IsCyclic P]

/-- If a normal cyclic Sylow `p`-subgroup `P` has a complement `K`, then either `⁅K, P⁆ = ⊥` or
  `⁅K, P⁆ = P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
