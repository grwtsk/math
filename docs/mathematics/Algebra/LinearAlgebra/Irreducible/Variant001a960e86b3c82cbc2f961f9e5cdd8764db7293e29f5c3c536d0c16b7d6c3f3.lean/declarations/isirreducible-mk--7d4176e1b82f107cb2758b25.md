# IsIrreducible.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8327e4ab-ccc6-e5ea-35a7-ee9d1ce09873",
  "kind": "lemma",
  "lexical_name": "IsIrreducible.mk'",
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
  "slug": "isirreducible-mk--7d4176e1b82f107cb2758b25",
  "source": {
    "blob": "8d8b16e25977ba4c11e5cd2217a26e8243f68dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4176e1b82f107cb2758b25c86c0456b72d83d0c5703d8b1aee3b51f518e9f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8327e4ab-ccc6-e5ea-35a7-ee9d1ce09873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsIrreducible.mk' {K : Type*} [Field K] [Module K M] [Module K N] [Nontrivial M]
    (P : RootPairing ι K M N)
    (h : ∀ (q : Submodule K M), (∀ i, q ∈ invtSubmodule (P.reflection i)) → q ≠ ⊥ → q = ⊤) :
    P.IsIrreducible where
  nontrivial := inferInstance
  nontrivial' := (Module.nontrivial_dual_iff K).mp P.toDualLeft.symm.nontrivial
  eq_top_of_invtSubmodule_reflection := h
  eq_top_of_invtSubmodule_coreflection q stab ne_bot := by
    specialize h (q.dualAnnihilator.map P.toDualLeft.symm)
      fun i ↦ invtSubmodule_reflection_of_invtSubmodule_coreflection P i q (stab i)
    rw [Submodule.map_eq_top_iff, not_imp_comm] at h
    replace ne_bot : q.dualAnnihilator ≠ ⊤ := by simpa
    simpa using h ne_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8b16e25977ba4c11e5cd2217a26e8243f68dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
