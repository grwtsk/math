# commutator_eq_bot_or_commutator_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b4f92c099e07a62923cab608512dad29a855750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7edea751-617c-2fe9-2354-f9a3358c4d6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82a5e362-c046-b373-741e-8950677ee900",
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
  "slug": "commutator-eq-bot-or-commutator-eq-self--ce4f7af377294a6027f1dd57",
  "source": {
    "blob": "2b4f92c099e07a62923cab608512dad29a855750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 214,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4f7af377294a6027f1dd57de6bb758b1c3b6a5291066bde233a1761ddfb010",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82a5e362-c046-b373-741e-8950677ee900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_eq_bot_or_commutator_eq_self {P K : Subgroup G} [IsCyclic P]
    (hP : IsPGroup p P) (hKP : K ≤ Subgroup.normalizer P)
    (hPK : (Nat.card P).Coprime (Nat.card K)) : ⁅K, P⁆ = ⊥ ∨ ⁅K, P⁆ = P := by
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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f92c099e07a62923cab608512dad29a855750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
