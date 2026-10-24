# commutator_commutator_eq_bot_of_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa895726-4df6-d16a-2057-e8fadbd6ce66",
  "kind": "theorem",
  "lexical_name": "commutator_commutator_eq_bot_of_rotate",
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
  "slug": "commutator-commutator-eq-bot-of-rotate--b9ccf4dfd86c673e94c83c0c",
  "source": {
    "blob": "3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9ccf4dfd86c673e94c83c0ce8ea1e37e43b13e7af84d6e0b533f8aa69a2268c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa895726-4df6-d16a-2057-e8fadbd6ce66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_commutator_eq_bot_of_rotate (h1 : ⁅⁅H₂, H₃⁆, H₁⁆ = ⊥) (h2 : ⁅⁅H₃, H₁⁆, H₂⁆ = ⊥) :
    ⁅⁅H₁, H₂⁆, H₃⁆ = ⊥ := by
  simp_rw [commutator_eq_bot_iff_le_centralizer, commutator_le,
    mem_centralizer_iff_commutator_eq_one, ← commutatorElement_def] at h1 h2 ⊢
  intro x hx y hy z hz
  trans x * z * ⁅y, ⁅z⁻¹, x⁻¹⁆⁆⁻¹ * z⁻¹ * y * ⁅x⁻¹, ⁅y⁻¹, z⁆⁆⁻¹ * y⁻¹ * x⁻¹
  -- We avoid `group` here to minimize imports while low in the hierarchy;
  -- typically it would be better to invoke the tactic.
  · simp [commutatorElement_def, mul_assoc]
  · rw [h1 _ (H₂.inv_mem hy) _ hz _ (H₁.inv_mem hx), h2 _ (H₃.inv_mem hz) _ (H₁.inv_mem hx) _ hy]
    simp [commutatorElement_def, mul_assoc]

variable (H₁ H₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
